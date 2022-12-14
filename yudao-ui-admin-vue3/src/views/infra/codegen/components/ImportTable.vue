<script setup lang="ts">
import { reactive, ref } from 'vue'
import { getSchemaTableListApi, createCodegenListApi } from '@/api/infra/codegen'
import {
  ElMessage,
  ElTable,
  ElTableColumn,
  ElForm,
  ElFormItem,
  ElInput,
  ElEmpty
} from 'element-plus'
import { useI18n } from '@/hooks/web/useI18n'
import { useEmitt } from '@/hooks/web/useEmitt'
import { getDataSourceConfigListApi } from '@/api/infra/dataSourceConfig'
import type { DataSourceConfigVO } from '@/api/infra/dataSourceConfig/types'
import type { DatabaseTableVO } from '@/api/infra/codegen/types'
const { t } = useI18n() // 国际化
const { emitter } = useEmitt()
// ======== 显示页面 ========
const visible = ref(false)
const queryParams = reactive({
  tableName: undefined,
  tableComment: undefined,
  dataSourceConfigId: 0
})
const dataSourceConfigs = ref<DataSourceConfigVO[]>([])
const show = async () => {
  const res = await getDataSourceConfigListApi()
  dataSourceConfigs.value = res
  queryParams.dataSourceConfigId = dataSourceConfigs.value[0].id
  visible.value = true
  await getList()
}
/** 查询表数据 */
const dbTableList = ref<DatabaseTableVO[]>([])

/** 查询表数据 */
const getList = async () => {
  const res = await getSchemaTableListApi(queryParams)
  dbTableList.value = res
}
// 查询操作
const handleQuery = async () => {
  await getList()
}
// 重置操作
const resetQuery = async () => {
  queryParams.tableName = undefined
  queryParams.tableComment = undefined
  await getList()
}
/** 多选框选中数据 */
const tables = ref<string[]>([])
const handleSelectionChange = (val: DatabaseTableVO[]) => {
  tables.value = val.map((item) => item.name)
}
/** 导入按钮操作 */
const handleImportTable = () => {
  if (tables.value.length === 0) {
    ElMessage.error('请选择要导入的表')
    return
  }
  createCodegenListApi({
    dataSourceConfigId: queryParams.dataSourceConfigId,
    tableNames: tables.value
  }).then((res) => {
    ElMessage.success(res.msg)
    visible.value = false
    emitter.emit('ok')
  })
}
defineExpose({
  show
})
</script>
<template>
  <!-- 导入表 -->
  <Dialog title="导入表" v-model="visible" maxHeight="500px" width="50%">
    <el-form :model="queryParams" ref="queryRef" :inline="true">
      <!-- <el-form-item label="数据源" prop="dataSourceConfigId">
        <el-select v-model="queryParams.dataSourceConfigId" placeholder="请选择数据源" clearable>
          <el-option
            v-for="config in dataSourceConfigs"
            :key="config.id"
            :label="config.name"
            :value="config.id"
          />
        </el-select>
      </el-form-item> -->
      <el-form-item label="表名称" prop="tableName">
        <el-input v-model="queryParams.tableName" placeholder="请输入表名称" clearable />
      </el-form-item>
      <el-form-item label="表描述" prop="tableComment">
        <el-input v-model="queryParams.tableComment" placeholder="请输入表描述" clearable />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" @click="handleQuery">
          <Icon icon="ep:search" class="mr-5px" />
          {{ t('common.query') }}
        </el-button>
        <el-button @click="resetQuery">
          <Icon icon="ep:refresh-right" class="mr-5px" />
          {{ t('common.reset') }}
        </el-button>
      </el-form-item>
    </el-form>
    <el-table
      ref="table"
      :data="dbTableList"
      @selection-change="handleSelectionChange"
      height="400px"
    >
      <template #empty>
        <el-empty description="加载中" />
      </template>
      <el-table-column type="selection" width="55" />
      <el-table-column prop="name" label="表名称" :show-overflow-tooltip="true" />
      <el-table-column prop="comment" label="表描述" :show-overflow-tooltip="true" />
    </el-table>
    <template #footer>
      <div class="dialog-footer">
        <el-button type="primary" @click="handleImportTable">{{ t('action.import') }}</el-button>
        <el-button @click="visible = false">{{ t('dialog.close') }}</el-button>
      </div>
    </template>
  </Dialog>
</template>
