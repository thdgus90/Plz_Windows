﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<link rel="icon" type="image/png" href="http://example.com/myicon.png"> 


		<title>회원가입</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/register.css" />

		
		<script>
$(document).ready(function() {
    $(document).bind("contextmenu", function(e){
        alert("오른쪽 마우스 금지");
        return false;
    });
 
    $('img').bind("contextmenu",function(e){ 
        alert("그림에서 오른쪽 마우스 금지"); 
        return false; 
    }); 
 
    $('img').bind("selectstart",function(e){ 
        alert("그림에서 오른쪽 마우스 금지"); 
        return false;  
    }); 
}); 
 
document.oncontextmenu=function(){return false;} // 우클릭 방지
document.onselectstart=function(){return false;} // 드래그 방지
document.ondragstart=function(){return false;} // 선택 방지
document.onmousedown=function(){return false;}




function emailDisplay(frm) {
 
    var email2 = frm.email3.selectedIndex;
 
    switch( email2 ){
       case 0:
         frm.email2.value = '';
         break;
       case 1:
         frm.email2.value = 'naver.com';
         break;
       case 2:
         frm.email2.value = 'nate.com';
         break;
       case 3:
         frm.email2.value = 'gmail.com';
         break;
       case 4:
         frm.email2.value = 'hotmail.com';
         break;
       case 5:
           frm.email2.value = 'yahoo.co.kr';
           break;
         case 6:
           frm.email2.value = 'empal.com';
           break;
         case 7:
           frm.email2.value = 'korea.com';
           break;
         case 8:
           frm.email2.value = 'hanmail.net';
           break;
         case 9:
           frm.email2.value = '';
           break;
    }
    
    return true;
}
</script>


	</head>
	<body class="is-preload" oncontextmenu="return false" ondragstart="return false" onselectstart="return false">
	<div id="wrapper" class="fade-in">
					<!-- Intro -->
					<!-- <div id="intro">
					</div> -->
<!-- Header -->
					<header id="header">
						<a href="/Plz_Windows/main.do" class="logo">Home</a>
					</header>
							

	<div id="t3-mainbody" class="wrap t3-mainbody">
		<div class="container">
			<div class="row" style="width:100%">
				<!-- MAIN CONTENT -->
				<div id="t3-content" class="t3-content" style="padding-top:0; width:80%">
					<form class="form-horizontal" name="joinFrm" id="joinFrm" method="post" action="/Plz_Windows/signup.do">
					<input type="hidden" id="mode" name="mode"  value="join">
					<input type="hidden" id="id_chk" name="id_chk" value="">
					<input type="hidden" id="nickname_chk" name="nickname_chk" value="">
						<div id="system-message-container"></div>

						<div class="docs-section">
							<div class="page-header">
								<b>개인정보 수집 및 이용 (필수)</b>
							</div>
							<div class="well">
								<table class="table-bordered">
								<thead>
								<tr>
									<td class="text-center">목적</td>
									<td class="text-center" style="border:1px solid white;">항목</td>
									<td class="text-center">보유기간</td>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td class="text-center">이용자 식별, 서비스 이용 및 문의상담</td>
									<td class="text-center" style="border:1px solid white;">아이디(이메일), 비밀번호, 닉네임, 성명, 생년월일</td>
									<td class="text-center">회원탈퇴 후 5일까지</td>
								</tr>
								</tbody>
								</table>
								<div class="check">
									<input type="checkbox" id="privateApprovalFl"><label for="privateApprovalFl" class="control-label" >개인정보 수집 및 이용에 동의합니다.</label>
								</div>
							</div>
							<div class="danger-position">
							<p><strong class="text-danger">※ PlzWindow 서비스 제공을 위해서 필요한 최소한의 개인정보이므로 동의를 해 주셔야 서비스를 이용하실 수 있습니다.</strong></p>
							</div>
						</div>

						<div class="docs-section">
							<div class="page-header">
								<b>이용약관 (필수)</b>
							</div>
							<div class="well" style="padding-left:50px;">
								<textarea id="agreement" class="form-control" rows="15" readonly="readonly">제1조(목적)
이 약관은 주식회사 PleasWindow(이하 "회사"라고 합니다)가 “PlzWindow” 인터넷 사이트(http://www.PlzWindow.net, 이하 "PlzWindow” 라고 합니다)를 통하여 제공하는 인터넷 관련 서비스 및 기타 정보서비스(이하 "서비스"라고 합니다)와 관련하여 회사와 회원간의 권리와 의무, 책임사항 및 회원의 서비스이용절차에 관한 사항을 규정함을 목적으로 합니다.

* 「스마트폰 등 이동통신기기 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」

제2조(정의)
①"PlzWindow" 란 회사가 재화 또는 용역(이하 "재화 등"이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 사이버 몰을 운영하는 사업자의 의미로도 사용합니다.

②"이용자"란 "회사"에 접속하여 이 약관에 따라 "회사"가 제공하는 서비스를 받는 회원을 말합니다.

③ '회원'이라 함은 "회사"에 개인정보를 제공하여 회원등록을 한 자로서, "회사"의 정보를 지속적으로 제공받으며, "회사"가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.

제3조 (약관등의 명시와 설명 및 개정) 
① "회사"는 이 약관의 내용과 상호 및 대표자 성명, 영업소 소재지 주소(소비자의 불만을 처리할 수 있는 곳의 주소를 포함), 전화번호, 이메일, 사업자등록번호, 통신판매업신고번호, 개인정보관리책임자 등을 이용자가 쉽게 알 수 있도록 PlzWindow의 초기 서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.

② "회사”는 이용자가 약관에 동의하기에 앞서 약관에 정해져 있는 내용 중 청약철회, 환불조건 등과 같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다.

③ "회사"는 전자상거래 등에서의 소비자 보호에 관한 법률, 약관의 규제에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 등에 관한 법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.

④ "회사"가 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행약관과 함께 PlzWindow의 초기화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 
다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 "회사"는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다.

⑤ "회사"가 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지 기간 내에 “PlzWindow"에 송신하여 "PlzWindow"의 동의를 받은 경우에는 개정약관 조항이 적용됩니다.

⑥ 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 전자상거래 등에서의 소비자보호에 관한 법률, 약관의 규제 등에 관한 법률, 공정거래위원회가 정하는 전자상거래 등에서의 소비자보호지침 및 관계법령 또는 상 관례에 따릅니다.

제4조(서비스의 제공 및 변경) 
① "회사"는 다음과 같은 업무를 수행합니다.
1. 재화 또는 용역에 대한 정보 제공 및 구매계약의 체결
2. 구매계약이 체결된 재화 또는 용역의 배송
3. 기타 "회사"가 정하는 업무

②"회사"는 재화 또는 용역의 품절 또는 기술적 사양의 변경 등의 경우에는 장차 체결되는 계약에 의해 제공할 재화 또는 용역의 내용을 변경할 수 있습니다. 이 경우에는 변경된 재화 또는 용역의 내용 및 제공일자를 명시하여 현재의 재화 또는 용역의 내용을 게시한 곳에 즉시 공지합니다.

③"회사"가 제공하기로 이용자와 계약을 체결한 서비스의 내용을 재화 등의 품절 또는 기술적 사양의 변경 등의 사유로 변경할 경우에는 그 사유를 이용자에게 통지 가능한 이메일주소 및 이동전화번호로 즉시 통지합니다.

④전항의 경우 "회사"는 이로 인하여 이용자가 입은 손해를 배상합니다. 다만, "회사"의 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

제5조(서비스의 중단) 
① "회사"는 컴퓨터 등 정보통신설비의 보수점검,교체 및 고장, 통신의 두절 등의 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다.

②"회사"는 제5조 제1항의 사유로 서비스의 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대하여 배상합니다. 단, "회사"가 고의 또는 과실이 없음을 입증하는 경우에는 그러하지 아니합니다.

③사업종목의 전환, 사업의 포기, 업체간의 통합 등의 이유로 서비스를 제공할 수 없게 되는 경우에는 "회사"는 제8조에 정한 방법으로 이용자에게 통지하고 당초 "회사"에서 제시한 조건에 따라 소비자에게 보상합니다. 다만, "회사"가 보상기준 등을 고지하지 아니한 경우에는 이용자들의 마일리지 또는 적립금 등을 "회사"에서 통용되는 통화가치에 상응하는 현물 또는 현금으로 이용자에게 지급합니다.

제6조(회원가입) 
① 이용자는 "회사"가 정한 가입 양식에 따라 회원정보를 기입한 후 이 약관에 동의한다는 의사표시를 함으로서 회원가입을 신청합니다.

② "회사"는 제1항과 같이 회원으로 가입할 것을 신청한 이용자 중 다음 각호에 해당하지 않는 한 회원으로 등록합니다.
1. 가입신청자가 이 약관 제7조제3항에 의하여 이전에 회원자격을 상실한 적이 있는 경우, 다만 제7조제3항에 의한 회원자격 상실 후 3년이 경과한 자로서 "회사"의 회원재가입 승낙을 얻은 경우에는 예외로 한다.
2. 등록 내용에 허위, 기재누락, 오기가 있는 경우
3. 기타 회원으로 등록하는 것이 "회사"의 기술상 현저히 지장이 있다고 판단되는 경우

③ 회원가입계약의 성립시기는 "회사"의 승낙이 회원에게 도달한 시점으로 합니다.

④ 회원은 제15조제1항에 의한 등록사항에 변경이 있는 경우, 즉시 전자우편 기타 방법으로 "회사"에 대하여 그 변경사항을 알려야 합니다.

제7조(회원 탈퇴 및 자격 상실 등) 
① 회원은 "회사"에 언제든지 탈퇴를 요청할 수 있으며 "회사"는 즉시 회원탈퇴를 처리합니다.

② 회원이 다음 각호의 사유에 해당하는 경우, "회사"는 회원자격을 제한 및 정지시킬 수 있습니다.
1. 가입 신청 시에 허위 내용을 등록한 경우
2. "PlzWindow"를 이용하여 구입한 재화 등의 대금, 기타 "PlzWindow"이용에 관련하여 회원이 부담하는 채무를 기일에 지급하지 않는 경우
3. 다른 사람의 "PlzWindow" 이용을 방해하거나 그 정보를 도용하는 등 전자상거래 질서를 위협하는 경우
4. "PlzWindow"를 이용하여 법령 또는 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 경우

③ "회사"이 회원 자격을 제한, 정지시킨 후, 동일한 행위가 2회 이상 반복되거나 30일 이내에 그 사유가 시정되지 아니하는 경우 "회사"는 회원자격을 상실시킬 수 있습니다.

④ "회사"가 회원자격을 상실시키는 경우에는 회원등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원등록 말소 전에 최소한 30일 이상의 기간을 정하여 소명할 기회를 부여합니다.

제8조(회원에 대한 통지)
① "회사"가 회원에 대한 통지를 하는 경우, 회원이 "회사"와 미리 약정하여 지정한 전자우편 주소로 할 수 있습니다.

② "회사"는 불특정다수 회원에 대한 통지의 경우 1주일이상 "PlzWindow" 게시판에 게시함으로써 개별 통지에 갈음할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.

제9조(구매신청)
"PlzWindow" 이용자는 "PlzWindow"상에서 다음 또는 이와 유사한 방법에 의하여 구매를 신청하며, "회사"는 이용자가 구매신청을 함에 있어서 다음의 각 내용을 알기 쉽게 제공하여야 합니다.  단, 회원인 경우 제2호 내지 제4호의 적용을 제외할 수 있습니다.
1. 재화등의 검색 및 선택
2. 닉네임, 전자우편주소 입력
3. 약관내용, 청약 철회권이 제한되는 서비스의 비용부담과 관련한 내용에 대한 확인
4. 이 약관에 동의하고 위 3.호의 사항을 확인하거나 거부하는 표시(예, 마우스 클릭)
5. 재화 등의 구매신청 및 이에 관한 확인 또는 "PlzWindow"의 확인에 대한 동의
6. 결제방법의 선택

제10조 (계약의 성립)
① "회사"는 제9조와 같은 구매신청에 대하여 다음 각호에 해당하면 승낙하지 않을 수 있습니다. 다만, 미성년자와 계약을 체결하는 경우에는 법정대리인의 동의를 얻지 못하면 미성년자 본인 또는 법정대리인이 계약을 취소할 수 있다는 내용을 고지하여야 합니다.
1. 신청 내용에 허위, 기재누락, 오기가 있는 경우
2. 미성년자가 청소년보호법에서 금지하는 재화 및 용역을 구매하는 경우
3. 기타 구매신청에 승낙하는 것이 "PlzWindow" 기술상 현저히 지장이 있다고 판단하는 경우

② "회사"의 승낙이 제12조제1항의 수신확인통지형태로 이용자에게 도달한 시점에 계약이 성립한 것으로 봅니다.

③ "회사"의 승낙의 의사표시에는 이용자의 구매 신청에 대한 확인 및 판매가능 여부, 구매신청의 정정 취소 등에 관한 정보 등을 포함하여야 합니다.

제11조(지급방법)
"회사"에서 구매한 재화 또는 용역에 대한 대금지급방법은 다음 각호의 방법 중 가용한 방법으로 할 수 있습니다. 단, "회사"는 이용자의 지급방법에 대하여 재화 등의 대금에 어떠한 명목의 수수료도  추가하여 징수할 수 없습니다.
1. 폰뱅킹, 인터넷뱅킹, 모바일뱅킹 등의 각종 계좌이체 
2. 선불카드, 직불카드, 신용카드 등의 각종 카드 결제
3. 온라인무통장입금
4. 전자화폐에 의한 결제
5. 수령 시 대금지급
6. 마일리지 등 "회사"가 지급한 포인트에 의한 결제
7. "회사"와 계약을 맺었거나 "회사"가 인정한 상품권에 의한 결제  
8. 기타 전자적 지급 방법에 의한 대금 지급 등

제12조(수신확인통지구매신청 변경 및 취소)
① "회사"는 이용자의 구매신청이 있는 경우 이용자에게 수신확인통지를 합니다.

② 수신확인통지를 받은 이용자는 의사표시의 불일치 등이 있는 경우에는 수신확인통지를 받은 후 즉시 구매신청 변경 및 취소를 요청할 수 있고 "회사"는 배송 전에 이용자의 요청이 있는 경우에는 지체 없이 그 요청에 따라 처리하여야 합니다. 다만 이미 대금을 지불한 경우에는 제15조의 청약철회 등에 관한 규정에 따릅니다.

제13조(재화 등의 공급)
① "회사"는 이용자와 재화 등의 공급시기에 관하여 별도의 약정이 없는 이상, 이용자가 청약을 한 날부터 7일 이내에 재화 등을 배송할 수 있도록 전자시스템 등 기타의 필요한 조치를 취합니다. 다만, "회사"가 이미 재화 등의 대금의 전부 또는 일부를 받은 경우에는 대금의 전부 또는 일부를 받은 날부터 2영업일 이내에 조치를 취합니다.  이때 "회사"는 이용자가 재화 등의 공급 절차 및 진행 사항을 확인할 수 있도록 적절한 조치를 합니다.

②"회사"는 이용자가 구매한 재화에 대해 배송수단, 수단별 배송비용 부담자, 수단별 배송기간 등을 명시합니다. 만약 "회사"이 약정 배송기간을 초과한 경우에는 그로 인한 이용자의 손해를 배상하여야 합니다. 다만 "회사"이 고의과실이 없음을 입증한 경우에는 그러하지 아니합니다.


제14조(환급)
"회사"는 이용자가 구매 신청한 재화 등이 품절 등의 사유로 인도 또는 제공을 할 수 없을 때에는 지체 없이 그 사유를 이용자에게 통지하고 사전에 재화 등의 대금을 받은 경우에는 대금을 받은 날부터 2영업일 이내에 환급하거나 환급에 필요한 조치를 취합니다.

제15조(청약철회 등)
①"회사"와 재화 등의 구매에 관한 계약을 체결한 이용자는 수신확인의 통지를 받은 날부터 7일 이내에는 청약의 철회를 할 수 있습니다.
② 이용자는 재화 등을 배송 받은 경우 다음 각호의 1에 해당하는 경우에는 반품 및 교환을 할 수 없습니다.
1. 이용자에게 책임 있는 사유로 재화 등이 멸실 또는 훼손된 경우(다만, 재화 등의 내용을 확인하기 위하여 포장 등을 훼손한 경우에는 청약철회를 할 수 있습니다)
2. 이용자의 사용 또는 소비에 의하여 재화 등의 가치가 현저히 감소한 경우
3. 시간의 경과에 의하여 재판매가 곤란할 정도로 재화 등의 가치가 현저히 감소한 경우
4. 같은 성능을 지닌 재화 등으로 복제가 가능한 경우 그 원본인 재화 등의 포장을 훼손한 경우

③ 제2항 제2호 내지 제4호의 경우에 "회사"가 사전에 청약철회 등이 제한되는 사실을 소비자가 쉽게 알 수 있는 곳에 명기하거나 등의 조치를 하지 않았다면 이용자의 청약철회 등이 제한되지 않습니다.

④ 이용자는 제1항 및 제2항의 규정에 불구하고 재화 등의 내용이 표시 광고 내용과 다르거나 계약내용과 다르게 이행된 때에는 당해 재화 등을 공급받은 날부터 3월 이내, 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내에 청약철회 등을 할 수 있습니다.

제16조(청약철회 등의 효과)
① "회사"는 이용자로부터 재화 등을 반환 받은 경우 7영업일 이내에 이미 지급받은 재화 등의 대금을 환급합니다. 이 경우 "회사"가 이용자에게 재화 등의 환급을 지연한 때에는 그 지연기간에 대하여 공정거래위원회가 정하여 고시하는 지연이자율을 곱하여 산정한 지연이자를 지급합니다.

② "회사"는 위 대금을 환급함에 있어서 이용자가 신용카드 또는 전자화폐 등의 결제수단으로 재화 등의 대금을 지급한 때에는 지체 없이 당해 결제수단을 제공한 사업자로 하여금 재화 등의 대금의 청구를 정지 또는 취소하도록 요청합니다.

③ 청약철회 등의 경우 공급받은 재화 등의 반환에 필요한 비용은 이용자가 부담합니다. "회사"는 이용자에게 청약철회 등을 이유로 위약금 또는 손해배상을 청구하지 않습니다. 다만 재화 등의 내용이 표시 광고 내용과 다르거나 계약내용과 다르게 이행되어 청약철회 등을 하는 경우 재화 등의 반환에 필요한 비용은 "회사"가 부담합니다.

제17조(개인정보보호)
①"회사"는 이용자의 정보수집 시 구매계약 이행에 필요한 최소한의 정보를 수집합니다. 다음 사항을 필수사항으로 하며 그 외 사항은 선택사항으로 합니다.
1. 희망ID(회원의 경우)
2. 비밀번호(회원의 경우)
3. 전자우편주소(또는 이동전화번호)

② "회사"는 이용자의 개인식별이 가능한 개인정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.

③제공된 개인정보는 당해 이용자의 동의 없이 목적 외의 이용이나 제3자에게 제공할 수 없으며, 이에 대한 모든 책임은　“회사”에게 있습니다. 다만, 다음의 경우에는 예외로 합니다.

④"회사"가 제2항과 제3항에 의해 이용자의 동의를 받아야 하는 경우에는 개인정보관리 책임자의 신원(소속, 성명 및 전화번호, 기타 연락처), 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공 관련사항(제공 받은자, 제공목적 및 제공할 정보의 내용) 등 정보통신망이용촉진및정보보호 등에 관한 법률 제22조 제2항이 규정한 사항을 미리 명시하거나 고지해야 하며 이용자는 언제든지 이 동의를 철회할 수 있습니다.

⑤이용자는 언제든지 "회사"가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정을 요구할 수 있으며 "회사"는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 "회사"는 그 오류를 정정할 때까지 당해 개인정보를 이용하지 않습니다.
 
⑥ "회사"는 개인정보 보호를 위하여 관리자를 한정하여 그 수를 최소화하며 신용카드, 은행계좌 등을 포함한 이용자의 개인정보의 분실, 도난, 유출, 변조 등으로 인한 이용자의 손해에 대하여 모든 책임을  집니다.

⑦ "회사" 또는 그로부터 개인정보를 제공받은 제3자는 개인정보의 수집목적 또는 제공받은 목적을 달성한 때에는 당해 개인정보를 지체 없이 파기합니다.

제18조("회사"의 의무)
① "회사"는 법령과 이 약관이 금지하거나 공서양속에 반하는 행위를 하지 않으며 이 약관이 정하는 바에 따라 지속적이고, 안정적으로 재화용역을 제공하는데 최선을 다하여야 합니다.

② "회사"는 이용자가 안전하게 인터넷 서비스를 이용할 수 있도록 이용자의 개인정보(신용정보 포함)보호를 위한 보안 시스템을 갖추어야 합니다.

③ "회사"는 상품이나 용역에 대하여 「표시광고의공정화에관한법률」 제3조 소정의 부당한 표시광고행위를 함으로써 이용자가 손해를 입은 때에는 이를 배상할 책임을 집니다.

④ "회사"는 이용자가 원하지 않는 영리목적의 광고성 전자우편을 발송하지 않습니다.

제19조(회원의 ID 및 비밀번호에 대한 의무)
① 제17조의 경우를 제외한 ID와 비밀번호에 관한 관리책임은 회원에게 있습니다.

② 회원은 자신의 ID 및 비밀번호를 제3자에게 이용하게 해서는 안됩니다.

③ 회원이 자신의 ID 및 비밀번호를 도난 당하거나 제3자가 사용하고 있음을 인지한 경우에는 바로 "회사"에 통보하고 "회사"의 안내가 있는 경우에는 그에 따라야 합니다.

제20조(이용자의 의무)
이용자는 다음 행위를 하여서는 안됩니다.
1. 신청 또는 변경 시 허위 내용의 등록
2. 타인의 정보 도용
3. "PlzWindow"에 게시된 정보의 변경
4. "PlzWindow"가 정한 정보 이외의 정보(컴퓨터 프로그램 등) 등의 송신 또는 게시
5. "PlzWindow" 기타 제3자의 저작권 등 지적재산권에 대한 침해
6. "PlzWindow" 기타 제3자의 명예를 손상시키거나 업무를 방해하는 행위
7. 외설 또는 폭력적인 메시지, 화상, 음성, 기타 공서양속에 반하는 정보를 PlzWindow에 공개 또는 게시하는 행위
 
제21조(저작권의 귀속 및 이용제한)
① "회사"가 작성한 저작물에 대한 저작권 기타 지적재산권은 "회사"에 귀속합니다.

② 이용자는 "회사"을 이용함으로써 얻은 정보 중 "회사"에게 지적재산권이 귀속된 정보를 "회사"의 사전 승낙 없이 복제, 송신, 출판, 배포, 방송 기타 방법에 의하여 영리목적으로 이용하거나 제3자에게 이용하게 하여서는 안됩니다.

③ "회사"는 약정에 따라 이용자에게 귀속된 저작권을 사용하는 경우 당해 이용자에게 통보하여야 합니다.

제22조(분쟁해결)
① "회사"는 이용자가 제기하는 정당한 의견이나 불만을 반영하고 그 피해를 보상처리하기 위하여 피해보상처리기구를 설치 운영합니다.

② "회사"는 이용자로부터 제출되는 불만사항 및 의견은 우선적으로 그 사항을 처리합니다. 다만, 신속한 처리가 곤란한 경우에는 이용자에게 그 사유와 처리 일정을 즉시 통보해 드립니다.

③"회사"와 이용자간에 발생한 전자상거래 분쟁과 관련하여 이용자의 피해구제신청이 있는 경우에는 공정거래위원회 또는 시 도지사가 의뢰하는 분쟁조정기관의 조정에 따를 수 있습니다.

제23조(준거법 및 관할법원)
이 약관과 회사와 회원간의 이용계약에 대해서는 대한민국 법령이 적용되며, 이 약관, 회사와 회원간의 서비스 이용계약에 관한 해석과 관할법원에 대하여는 대한민국 법령에 따릅니다.

제24조(게시판의 이용)
가. 게시판 이용 원칙 
1) 회사는 PlzWindow 내에서 회원들이 지식을 공유할 수 있는 게시판을 운영하거나, 일정한 자격을 가진 회원들이 이를 운영할 수 있도록 할 수 있습니다. 
2) 게시물로 인해 발생하는 저작권 침해를 비롯한 민,형사상의 모든 책임은 당해 게시물의 게시자에게 있으며, 회사는 이에 대해 책임지지 않습니다. 
나. 게시물의 저작권 
1) PlzWindow의 게시판에 회원이 등록한 게시물의 저작권은 제3자의 권리를 침해하지 않는 한, 등록한 회원에게 속합니다. 
2) 회사는 회원이 등록한 게시물을 검색노출, 판촉, 홍보 및 기타의 자료로 무상 사용할 수 있습니다. 다만, 회사는 해당 게시물을 등록한 회원이 게시물의 삭제와 함께 사용중지를 요청한 경우에는 즉시 사용을 중지합니다. 
다. 게시물의 관리 
1) 회사는 다음과 같은 내용의 게시물의 등록을 금하며, 회원에 대한 사전 통보없이 게시물을 삭제하거나, 열람을 제한하거나, 쓰기를 금지하거나, 게시자의 회원자격을 박탈할 수 있습니다.
- 공공질서나 미풍양속에 위배되는 내용
- 불법물, 음란물 또는 청소년유해매체물의 게시, 등록 또는 이와 관련된 물품의 홍보, 사이트 링크 등의 행위
- 타인의 권리나 개인정보, 명예, 신용 기타 정당한 이익을 침해하는 내용을 포함하는 경우
- 범죄행위와 관련된 내용을 포함하는 경우
- 허위 또는 과장 광고 내용을 포함하는 경우
- 정치, 경제적 분쟁을 야기하는 내용을 포함하는 경우
- 정보통신 설비의 오동작을 유발하거나, 혼란을 유발하는 컴퓨터 바이러스 또는 데이터를 포 함하는 경우
- 물품의 판매처, 연락처 등의 내용을 기재하여 물품의 직거래를 유도하는 경우
- 기타 이 약관 또는 대한민국의 관련 법령에 위반되는 내용을 포함하는 경우 
2) 회원이 PlzWindow에 게재 또는 등록한 정보의 내용이 사생활 침해, 명예훼손 등 타인의 권리를 침해하는 정보(이하 "침해정보"라고 합니다)에 해당하여 그 침해를 받은 자가 회사에 침해사실을 소명하여 침해정보의 삭제 또는 반박내용의 게재를 요청하는 경우 회사는 지체 없이 침해정보의 삭제, 30일 범위 내에서 임시적 접근차단조치 (이하 "임시조치"라고 합니다)등 필요한 조치를 취합니다. 회사가 스스로 침해정보로 판단한 경우에도 동일합니다. 회사가 침해정보에 대하여 필요한 조치를 취한 경우 회사는 즉시 요청자 및 침해정보 게재자에게 통지합니다. 게재 또는 등록한 정보를 삭제 당한 회원이 분쟁당사자 간의 합의문, 확정력 있는 조서 또는 기타 삭제 또는 임시조치 된 정보가 침해정보가 아니라는 충분한 증빙 등을 제시하여 회사에 삭제 정보의 복구, 임시조치의 중단 등을 요구하는 경우 회사는 그 요구에 응할 수 있습니다. 
라. 게시물의 이용 
1) 회원은 PlzWindow에 별도 표시되는 목적에 부합하는 한도에서 게시물을 자신의 블로그나 개인 홈페이지 등에 퍼가기 할 수 있습니다. 이 경우 퍼가기 한 게시물에는 반드시 출처(URL등)를 표시하고 당해 출처와 링크 조치를 하여야 하며 게시물의 동일성을 해하는 게시물의 임의 변경, 편집, 수정 등을 할 수 없습니다. 
2) 회사 또는 저작권자가 요구하는 경우 회원은 퍼가기 한 게시물을 즉시 삭제하여야 합니다. 
3) 회원은 퍼가기 한 게시물에서 출처(URL등 )로의 링크를 제거하거나 퍼가기 한 게시물을 다른 상업성 웹사이트에 링크시킬 수 없습니다. 
제25조 (기타 조항)
가. 회사는 회원이 제기하는 정당한 의견이나 불만을 반영하고 그 문제를 해결하고 회원 상호간의 분쟁을 조정하기 위하여 고객센터를 설치, 운영합니다. 회사는 회원으로부터 제기되는 불만사항 및 의견이 정당하다고 판단되는 경우 이를 신속하게 처리하며, 7영업일 이내에 그 진행경과를 알리고 15영업일 이내에 조사결과와 처리방안을 통보합니다.

나. 본 서비스를 위반하거나 서비스 이용 시 불편 사항이 발생한 경우 주식회사 에이치투인터렉티브의 "고객지원" 서비스 또는 support@h2interactive.co.kr을 이용하시거나 전화 (1544-2367) 또는 Fax (02-6929-3865)로 알려주시면 성심껏 처리해 드리겠습니다. 

다. 회사소개
1) 주식회사 PleasWindow
2) 소재지 : 서울시 강남구 어딘가
3) 대표이사 : PlzWindow
4) 사업자 등록번호 : 123-45-67890 

본 약관은 2013년 10월 17일 부터 적용됩니다.
</textarea>
								
								<div class="checkbox">
								  <input type="checkbox" id="agreementInfoFl"><label style="margin-top:25px;" for="agreementInfoFl" class="control-label">이용약관에 동의합니다.</label>
								</div>
							</div>
						</div>

						<div class="registration" style="width:100%; padding-top:50px">
							<fieldset>
							<!-- <legend><span>회원가입</span></legend> -->
							<div class="form-inline form-group">
								<label for="m_id" class="col-sm-2 control-label">아이디</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="m_id" name="m_id" placeholder="아이디를 입력하세요" aria-describedby="nicknameReHelpBlock" maxlength="10" required="" style="width:200px;">
									
									<button type="button" class="btn btn-default" id="btn_id_chk">중복확인</button>
								</div>
							</div>
							

							<div class="form-group">
								<label for="m_pwd" class="col-sm-2 control-label">비밀번호</label>
								<div class="col-sm-3">
									<input type="password" class="form-control" id="m_pwd" name="m_pwd" placeholder="비밀번호를 입력하세요" aria-describedby="passwordHelpBlock" required="">
								</div>
									<span id="passwordHelpBlock" class="text-muted text-left">영문소문자, 숫자, 특수문자를 포함하여 8자이상 16이하로 사용이 가능합니다.</span>
							</div>

							<div class="form-group">
								<label for="m_pwd_re" class="col-sm-2 control-label">비밀번호확인</label>
								<div class="col-sm-4 ">
									<input type="password" class="form-control" id="m_pwd_re" name="m_pwd_re" placeholder="비밀번호확인을 입력하세요" aria-describedby="passwordReHelpBlock" required="">
								</div>
								<span id="passwordReHelpBlock" class="help-block text-left"></span>
							</div>
							
							<div class="form-group">
								<label for="m_name" class="col-sm-2 control-label">이름</label>
								<div class="col-sm-4">
									<input type="text" class="form-control" id="m_name" name="m_name" placeholder="이름을 입력하세요" aria-describedby="passwordHelpBlock" required="">
								</div>
							</div>
							
							<div class="form-inline form-group">
								<label for="m_birth" class="col-sm-2 control-label">생년월일</label>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="m_birthYear" name="m_birthYear" placeholder="태어난 년도" required="" style="width:110px;">
									<label for="m_birthYear" class="col-sm-2 control-label">년</label>
								</div>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="m_birthMonth" name="m_birthMonth" placeholder="태어난 달" required="" style="width:100px;">
									<label for="m_birthMonth" class="col-sm-2 control-label">월</label>
								</div>
								<div class="col-sm-2">
									<input type="text" class="form-control" id="m_birthDay" name="m_birthDay" placeholder="태어난 일" required="" style="width:100px;">
									<label for="m_birthDay" class="col-sm-2 control-label">일</label>
				
								</div>
								<div class="col-sm-4"></div>
							</div>
							
							<div class="form-group">
								<label for="m_phone" class="col-sm-2 control-label">전화번호</label>
								<div class="col-sm-3">
									<input type="text" class="form-control" id="m_phone" name="m_phone" placeholder="전화번호를 입력하세요" aria-describedby="passwordHelpBlock" required="">
								</div>
									<span id="phoneHelpBlock" class="text-muted text-left">-를 제외하고 입력해주세요.</span>
							</div>
							
							<div class="form-inline form-group">
								<label for="m_email" class="col-sm-2 control-label">이메일</label>
								<div class="col-sm-10">
									<input type="text" class="form-control" id="m_email" name="m_email" placeholder="이메일을 입력하세요" required="" style="width:170px;">

									<span style="color:#A4A4A4; float:left; padding-left:5px;">@</span>

									<input type="text" class="form-control" id="email2" name="email2" required="" style="width:150px;">

									<select name="email3" id="email3" class="form-control inputbox" style="" onchange="emailDisplay(this.form)">
										<option value="0" selected="">선택</option>
										<option value="1">naver.com</option>
										<option value="2">nate.com</option>
										<option value="3">gmail.com</option>
										<option value="4">hotmail.com</option>
										<option value="5">yahoo.co.kr</option>
										<option value="6">empal.com</option>
										<option value="7">korea.com</option>
										<option value="8">hanmail.net</option>
										<option value="9">직접입력</option>
									</select>
									<button type="button" class="btn btn-default" id="btn_nickname_chk">중복확인</button>
								</div>
							</div>
		
							<div class="form-group" style="margin:0;">
								<label for="mailling" class="col-sm-2 control-label">이메일 수신</label>
								<div class="col-sm-10 text-left" style="padding-right:80px;">
									<div class="checkbox">
									  <input type="checkbox" id="mailling" name="mailling" value="Y"><label for="mailling" class="control-label" style="color:#ffffff; font-size:13px; margin-top:5px;">정보/이벤트 메일 수신에 동의합니다</label>
									</div>
								</div>
								<div class="col-sm-6"></div>
							</div>
							<div style="letter-spacing:-1; padding-right:50px;" class="text-danger">※ <span>주문 관련 정보, 주요 공지사항 및 이벤트 당첨 안내 등은 수신 동의 여부에 관계없이 자동 발송됩니다.</span></div>
							</fieldset>
							<div class="form-group form-actions"  style="border:none;">
								<div class="col-sm-12 text-center">
									<button type="submit" class="btn btn-primary validate btn_resi" >회원가입</button>
									<input id="btn_cancel" type="button" value="취소" onClick="history.back();">
								</div>
							</div>
							
						</div>
					</form>
				</div>
				<!-- //MAIN CONTENT -->
			</div>
		</div>
	</div>

	
	
	
	
							
				

				<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; plzWindow</li><li>Design: <a href="#">plzWindow</a></li></ul>
					</div>

		

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="assets/js/NonRefreshPageMove.js"></script>

</div>
</body>
</html>