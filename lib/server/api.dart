import 'package:shared_preferences/shared_preferences.dart';

class API {
  Future<String> LOGIN_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/login';
  }
 /* String LOGIN_URL() {
    return sharedPreferences.getString('url') + '/Kingdee.BOS.WebApi.ServicesStub.AuthService.ValidateUser.common.kdsvc';
  }*/
  //单据查询
  Future<String> CURRENCY_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/billList/queryBillList';
  }
  //盘点方案查询
  Future<String> CURRENCY_INVURL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/invCheck/invProject';
  }//盘点方案明细查询
  Future<String> CURRENCY_INVLIST() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/invCheck/invCheckList';
  }
  //获取单号
  Future<String> ORDERNO_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/billList/getBillNo';
  }
  //获取菜单
  Future<String> PERMISSION_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/sysMenu/getSysMenuById';
  }
  //获取库存
  Future<String> INVENTORY_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/basic/inventory';
  }
  //扫码获取库存
  Future<String> SCANINVENTORY_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/basic/inventoryByBarcode';
  }
 //获取部门
  Future<String> DEPT_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/basic/deptList';
  }
 //获取仓库
  Future<String> STOCK_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/basic/stockList';
  }
 //获取客户
  Future<String> CUSTOMER_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/basic/customerList';
  }
 //获取供应商
  Future<String> SUPPLIER_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/basic/supplierList';
  }
  //采购保存
  Future<String> SAVE_PURCHASE() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/stockBill/purchaseStockIn';
  }//销售保存
  Future<String> SAVE_SALES() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/stockBill/saleStockOut';
  }//生产保存
  Future<String> SAVE_PRODUCT() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/stockBill/productStockIn';
  }//领料保存
  Future<String> SAVE_PICKING() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/stockBill/pickingStockOut';
  }//调拨保存
  Future<String> SAVE_TRANS() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/stockBill/addTrans';
  }//盘点保存
  Future<String> INV_CHECK() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/invCheck/invCheckQty';
  }//条码查询
  Future<String> SCAN_BARCODE() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/basic/barcodeScan';
  }//条码库存查询
  Future<String> SCAN_INVBARCODE() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/inventory/barcodeScan';
  }//其他入库
  Future<String> SAVE_STOCKIN() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/stockBill/otherStockIn';
  }//其他出库
  Future<String> SAVE_STOCKOUT() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/api/stockBill/otherStockOut';
  }
  //提交
  Future<String> SAVE_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.Save.common.kdsvc';
  }

  //保存
  Future<String> SUBMIT_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.Submit.common.kdsvc';
  }

//下推
  Future<String> DOWN_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.Push.common.kdsvc';
  }

//审核
  Future<String> AUDIT_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.Audit.common.kdsvc';
  }

//反审核
  Future<String> UNAUDIT_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.UnAudit.common.kdsvc';
  }

//删除
  Future<String> DELETE_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.Delete.common.kdsvc';
  }

//修改状态
  Future<String> STATUS_URL() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString('url') + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.ExcuteOperation.common.kdsvc';
  }

  /* static const String LOGIN_URL = API_PREFIX + '/Kingdee.BOS.WebApi.ServicesStub.AuthService.ValidateUser.common.kdsvc';
  //通用查询
  static const String CURRENCY_URL = API_PREFIX + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.ExecuteBillQuery.common.kdsvc';
  //提交
  static const String SAVE_URL = API_PREFIX + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.Save.common.kdsvc';
  //保存
  static const String SUBMIT_URL = API_PREFIX + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.Submit.common.kdsvc';
  //下推
  static const String DOWN_URL = API_PREFIX + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.Push.common.kdsvc';
  //审核
  static const String AUDIT_URL = API_PREFIX + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.Audit.common.kdsvc';
  //反审核
  static const String UNAUDIT_URL = API_PREFIX + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.UnAudit.common.kdsvc';
  //删除
  static const String DELETE_URL = API_PREFIX + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.Delete.common.kdsvc';
  //修改状态
  static const String STATUS_URL = API_PREFIX + '/Kingdee.BOS.WebApi.ServicesStub.DynamicFormService.ExcuteOperation.common.kdsvc';*/
  //版本查询
  static const String VERSION_URL =
      'https://www.pgyer.com/apiv2/app/check?_api_key=dd6926b00c3c3f22a0ee4204f8aaad88&appKey=ac58e1e3e981980c1bdeaea4ab035d3d';
  //授权查询 authorize
  static const String AUTHORIZE_URL =
      'http://auth.gzfzdev.com:50022/web/auth/findAuthMessage';
}
