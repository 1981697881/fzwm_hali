import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fzwm_hali/model/submit_entity.dart';
import 'package:fzwm_hali/utils/toast_util.dart';
import 'package:fzwm_hali/views/production/bind_SN_page.dart';
import 'package:fzwm_hali/views/production/picking_detail.dart';
import 'package:fzwm_hali/views/production/picking_out_sourcing_page.dart';
import 'package:fzwm_hali/views/production/picking_page.dart';
import 'package:fzwm_hali/views/production/return_detail.dart';
import 'package:fzwm_hali/views/production/return_page.dart';
import 'package:fzwm_hali/views/production/warehousing_detail.dart';
import 'package:fzwm_hali/views/production/warehousing_page.dart';
import 'package:fzwm_hali/views/purchase/purchase_out_sourcing_page.dart';
import 'package:fzwm_hali/views/purchase/purchase_return_detail.dart';
import 'package:fzwm_hali/views/purchase/purchase_return_page.dart';
import 'package:fzwm_hali/views/purchase/purchase_warehousing_detail.dart';
import 'package:fzwm_hali/views/purchase/purchase_warehousing_page.dart';
import 'package:fzwm_hali/views/sale/retrieval_detail.dart';
import 'package:fzwm_hali/views/sale/retrieval_page.dart';
import 'package:fzwm_hali/views/sale/return_goods_detail.dart';
import 'package:fzwm_hali/views/sale/return_goods_page.dart';
import 'package:fzwm_hali/views/stock/Inventory_detail.dart';
import 'package:fzwm_hali/views/stock/Inventory_page.dart';
import 'package:fzwm_hali/views/stock/allocation_detail.dart';
import 'package:fzwm_hali/views/stock/allocation_page.dart';
import 'package:fzwm_hali/views/stock/ex_warehouse_detail.dart';
import 'package:fzwm_hali/views/stock/ex_warehouse_page.dart';
import 'package:fzwm_hali/views/stock/grounding_page.dart';
import 'package:fzwm_hali/views/stock/other_warehousing_detail.dart';
import 'package:fzwm_hali/views/stock/other_warehousing_page.dart';
import 'package:fzwm_hali/views/stock/stock_page.dart';
import 'package:fzwm_hali/views/stock/undercarriage_page.dart';
import 'package:fzwm_hali/views/workshop/dispatch_detail.dart';
import 'package:fzwm_hali/views/workshop/dispatch_page.dart';
import 'package:fzwm_hali/views/workshop/report_detail.dart';
import 'package:fzwm_hali/views/workshop/report_page.dart';

class MenuPermissions {
  static void getMenu() async {}

  static getMenuChild(list){
    var menu = [];
    for (var i  in jsonDecode(list)) {
      switch (i['id']) {
        case 16:
          var obj = {
            "icon": Icons.loupe,
            "text": "外购入库",
            "parentId": 1,
            "color": Colors.pink.withOpacity(0.7),
            "router": PurchaseWarehousingPage(tranType: i['source']),
            "source": "",
          };
          menu.add(obj);
          menu.add({
            "icon": Icons.loupe,
            "text": "外购退货",
            "parentId": 1,
            "color": Colors.pink.withOpacity(0.7),
            "router": PurchaseReturnPage(tranType: i['source']),
            "source": "",
          });
          break;
        case 17:
          var obj = {
            "icon": Icons.loupe,
            "text": "外购入库无源单",
            "parentId": 1,
            "color": Colors.pink.withOpacity(0.7),
            "router": PurchaseWarehousingDetail(FBillNo: null,tranType: i['source']),
            "source": "",
          };
          menu.add(obj);
          menu.add({
            "icon": Icons.loupe,
            "text": "外购退货无源单",
            "parentId": 1,
            "color": Colors.pink.withOpacity(0.7),
            "router": PurchaseReturnDetail(FBillNo: null,tranType: i['source']),
            "source": "",
          });
          break;
        case 14:
          var obj = {
            "icon": Icons.loupe,
            "text": "销售出库",
            "parentId": 2,
            "color": Colors.pink.withOpacity(0.7),
            "router": RetrievalPage(tranType: i['source']),
            "source": "",
          };
          menu.add(obj);
          menu.add({
            "icon": Icons.loupe,
            "text": "销售退货",
            "parentId": 2,
            "color": Colors.pink.withOpacity(0.7),
            "router": ReturnGoodsPage(tranType: i['source']),
            "source": "",
          });
          break;
        case 15:
          var obj = {
            "icon": Icons.loupe,
            "text": "销售出库无源单",
            "parentId": 2,
            "color": Colors.pink.withOpacity(0.7),
            "router": RetrievalDetail(FBillNo: null,tranType: i['source']),
            "source": "",
          };
          menu.add(obj);
          menu.add({
            "icon": Icons.loupe,
            "text": "销售退货无源单",
            "parentId": 2,
            "color": Colors.pink.withOpacity(0.7),
            "router": ReturnGoodsDetail(FBillNo: null,tranType: i['source']),
            "source": "",
          });
          break;
        case 18:
          var obj = {
            "icon": Icons.loupe,
            "text": "领料",
            "parentId": 3,
            "color": Colors.pink.withOpacity(0.7),
            "router": PickingPage(tranType: i['source']),
            "source": "",
          };
          menu.add(obj);
          menu.add({
            "icon": Icons.loupe,
            "text": "退料",
            "parentId": 3,
            "color": Colors.pink.withOpacity(0.7),
            "router": ReturnPage(tranType: i['source']),
            "source": "",
          });
          menu.add({
            "icon": Icons.loupe,
            "text": "投料确认",
            "parentId": 3,
            "color": Colors.pink.withOpacity(0.7),
            "router": PickingOutSourcingPage(tranType: 88),
            "source": "",
          });
          break;
        case 19:
          var obj = {
            "icon": Icons.loupe,
            "text": "领料无源单",
            "parentId": 3,
            "color": Colors.pink.withOpacity(0.7),
            "router": PickingDetail(FBillNo: null,tranType: i['source']),
            "source": "",
          };
          menu.add(obj);
          menu.add({
            "icon": Icons.loupe,
            "text": "退料无源单",
            "parentId": 3,
            "color": Colors.pink.withOpacity(0.7),
            "router": ReturnDetail(FBillNo: null,tranType: i['source']),
            "source": "",
          });
          break;
        case 20:
          var obj = {
            "icon": Icons.loupe,
            "text": "产品入库",
            "parentId": 3,
            "color": Colors.pink.withOpacity(0.7),
            "router": WarehousingPage(tranType: i['source']),
            "source": "",
          };
          menu.add(obj);
          break;
        case 21:
          var obj = {
            "icon": Icons.loupe,
            "text": "产品入库无源单",
            "parentId": 3,
            "color": Colors.pink.withOpacity(0.7),
            "router": WarehousingDetail(FBillNo: null,tranType: i['source']),
            "source": "",
          };
          menu.add(obj);
          break;
        case 6:
          var obj = {
            "icon": Icons.loupe,
            "text": "盘点",
            "parentId": 4,
            "color": Colors.pink.withOpacity(0.7),
            "router": InventoryPage(tranType: i['source']),
            "source": "",
          };
          menu.add(obj);
          break;
        case 8:
          var obj = {
            "icon": Icons.loupe,
            "text": "调拨",
            "parentId": 4,
            "color": Colors.pink.withOpacity(0.7),
            "router": AllocationPage(tranType: 41),
            "source": "",
          };
          menu.add(obj);
          break;
        case 9:
          var obj = {
            "icon": Icons.loupe,
            "text": "调拨无源单",
            "parentId": 4,
            "color": Colors.pink.withOpacity(0.7),
            "router": AllocationDetail(FBillNo: null, tranType: 41),
            "source": '',
          };
          menu.add(obj);
          break;
        case 24:
            var obj = {
              "icon": Icons.loupe,
              "text": "库存查询",
              "parentId": 5,
              "color": Colors.pink.withOpacity(0.7),
              "router": StockPage(),
              "source": '',
            };
            menu.add(obj);
          break;
      }
    }
    menu.add({
      "icon": Icons.loupe,
      "text": "其他入库",
      "parentId": 4,
      "color": Colors.pink.withOpacity(0.7),
      "router": OtherWarehousingDetail(),
      "source": '',
    }); menu.add({
      "icon": Icons.loupe,
      "text": "其他出库",
      "parentId": 4,
      "color": Colors.pink.withOpacity(0.7),
      "router": ExWarehouseDetail(),
      "source": '',
    });
    /*menu.add({
      "icon": Icons.loupe,
      "text": "外购入库",
      "parentId": 1,
      "color": Colors.pink.withOpacity(0.7),
      "router": PurchaseWarehousingPage(),
      "source": "",
    });
    menu.add({
      "icon": Icons.loupe,
      "text": "外购入库无源单",
      "parentId": 1,
      "color": Colors.pink.withOpacity(0.7),
      "router": PurchaseWarehousingDetail(FBillNo: null),
      "source": "",
    });
    menu.add({
      "icon": Icons.loupe,
      "text": "销售出库",
      "parentId": 2,
      "color": Colors.pink.withOpacity(0.7),
      "router": RetrievalPage(),
      "source": "",
    });

    menu.add({
      "icon": Icons.loupe,
      "text": "销售出库无源单",
      "parentId": 2,
      "color": Colors.pink.withOpacity(0.7),
      "router": RetrievalDetail(FBillNo: null),
      "source": "",
    });

    menu.add({
      "icon": Icons.loupe,
      "text": "领料",
      "parentId": 3,
      "color": Colors.pink.withOpacity(0.7),
      "router": PickingPage(),
      "source": "",
    });

    menu.add({
      "icon": Icons.loupe,
      "text": "领料无源单",
      "parentId": 3,
      "color": Colors.pink.withOpacity(0.7),
      "router": PickingDetail(FBillNo: null),
      "source": "",
    });

    menu.add({
      "icon": Icons.loupe,
      "text": "产品入库",
      "parentId": 3,
      "color": Colors.pink.withOpacity(0.7),
      "router": WarehousingPage(),
      "source": "",
    });

    menu.add({
      "icon": Icons.loupe,
      "text": "产品入库无源单",
      "parentId": 3,
      "color": Colors.pink.withOpacity(0.7),
      "router": WarehousingDetail(FBillNo: null),
      "source": "",
    });

    menu.add({
      "icon": Icons.loupe,
      "text": "盘盈单",
      "parentId": 4,
      "color": Colors.pink.withOpacity(0.7),
      "router": "",
      "source": "",
    });

    menu.add({
      "icon": Icons.loupe,
      "text": "盘亏单",
      "parentId": 4,
      "color": Colors.pink.withOpacity(0.7),
      "router": "",
      "source": "",
    });

    menu.add({
      "icon": Icons.loupe,
      "text": "调拨",
      "parentId": 4,
      "color": Colors.pink.withOpacity(0.7),
      "router": AllocationPage(),
      "source": "",
    });

    menu.add({
      "icon": Icons.loupe,
      "text": "调拨无源单",
      "parentId": 4,
      "color": Colors.pink.withOpacity(0.7),
      "router": AllocationDetail(),
      "source": '',
    });

    menu.add({
      "icon": Icons.loupe,
      "text": "库存查询",
      "parentId": 5,
      "color": Colors.pink.withOpacity(0.7),
      "router": StockPage(),
      "source": '',
    });*/
    return menu;
  }
}
