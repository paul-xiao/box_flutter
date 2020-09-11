import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../components/clipper.dart';

class TravelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(width: 375, height: 812, allowFontScaling: false);

    return Center(
        child: Flex(direction: Axis.vertical, children: <Widget>[
      Stack(
        children: <Widget>[
          Container(
            color: Colors.cyan,
            child: Image.asset('assets/logo.png', fit: BoxFit.contain),
          ),
          Positioned(
              bottom: 0,
              child: Center(
                child: ClipPath(
                    clipper: new PolygonClipper(),
                    child: Container(
                      decoration: new BoxDecoration(
                          color: Colors.blue,
                          border: Border.all(style: BorderStyle.none)),
                      height: ScreenUtil().setHeight(30),
                      width: ScreenUtil().setHeight(100),
                      child: null,
                    )),
              )),
        ],
      ),
      Container(
        height: ScreenUtil().setHeight(60),
        decoration: new BoxDecoration(
            color: Colors.blue, border: Border.all(style: BorderStyle.none)),
        child: Center(
          child: Text('出行贵宾礼遇  家庭优惠专享',
              style: TextStyle(fontSize: 18.0, color: Colors.white)),
        ),
        //transform: Matrix4.translationValues( 0.0, ScreenUtil().setHeight(-60), 0.0),
      ),
      Expanded(
          flex: 1,
          child: Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              reverse: false,
              padding: EdgeInsets.all(0.0),
              child: Container(
                  margin: EdgeInsets.all(16.0),
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: new BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      // border: new Border.all(width: 1, color: Colors.red),
                    ),
                    child: Text(
                      '老小日常的健康基础需求。活动期间，建设银行持卡人可通过现金+积分的形式兑换，包括家庭医生咨询、品牌连锁体检、三甲医院体检、超声波洁牙、儿童防蛀护齿等，最低9.9元即可获得健康医疗服务由资深三甲服务经验家庭医生为您和家人免费提供健康评估及咨询答疑服务，满足您全家老小日常的健康基础需求。活动期间，建设银行持卡人可通过现金+积分的形式兑换，包括家庭医生咨询、品牌连锁体检、三甲医院体检、超声波洁牙、儿童防蛀护齿等，最低9.9元即可获得健康医疗服务由资深三甲服务经验家庭医生为您和家人免费提供健康评估及咨询答疑服务，满足您全家老小日常的健康基础需求。活动期间，建设银行持卡人可通过现金+积分的形式兑换，包括家庭医生咨询、品牌连锁体检、三甲医院体检、超声波洁牙、儿童防蛀护齿等，最低9.9元即可获得健康医疗服务由资深三甲服务经验家庭医生为您和家人免费提供健康评估及咨询答疑服务，满足您全家老小日常的健康基础需求。活动期间，建设银行持卡人可通过现金+积分的形式兑换，包括家庭医生咨询、品牌连锁体检、三甲医院体检、超声波洁牙、儿童防蛀护齿等，最低9.9元即可获得健康医疗服务',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16.0,
                        height: 1.2,
                      ),
                    ),
                  )),
            ),
          )),
      Container(
          height: ScreenUtil().setHeight(80),
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: MaterialButton(
              minWidth: double.infinity,
              color: Colors.lightBlue,
              textColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              child: Text('去购买权益'),
              onPressed: () => {},
            ),
          ))
    ]));
  }
}
