public class wsdlclass {
    public class RefundProcessSoap {
        public String endpoint_x = 'https://secure.payment.2xoffice.com/payAPI/RefundProcess.asmx';
        public Map<String,String> inputHttpHeaders_x;
        public Map<String,String> outputHttpHeaders_x;
        public String clientCertName_x;
        public String clientCert_x;
        public String clientCertPasswd_x;
        public Integer timeout_x;
        private String[] ns_map_type_info = new String[]{'http://tempuri.org/', 'wsdlclass'};
        public String RefundProcessPayments(String sProcessAccounts,String sRefNumber,String sCardNumber) {
            wsdlclass.RefundProcessPayments_element request_x = new wsdlclass.RefundProcessPayments_element();
            wsdlclass.RefundProcessPaymentsResponse_element response_x;
            request_x.sProcessAccounts = sProcessAccounts;
            request_x.sRefNumber = sRefNumber;
            request_x.sCardNumber = sCardNumber;
            Map<String, wsdlclass.RefundProcessPaymentsResponse_element> response_map_x = new Map<String, wsdlclass.RefundProcessPaymentsResponse_element>();
            response_map_x.put('response_x', response_x);
            WebServiceCallout.invoke(
              this,
              request_x,
              response_map_x,
              new String[]{endpoint_x,
              'http://tempuri.org/RefundProcessPayments',
              'http://tempuri.org/',
              'RefundProcessPayments',
              'http://tempuri.org/',
              'RefundProcessPaymentsResponse',
              'wsdlclass.RefundProcessPaymentsResponse_element'}
            );
            response_x = response_map_x.get('response_x');
            return response_x.RefundProcessPaymentsResult;
        }
    }
    public class RefundProcessPayments_element {
        public String sProcessAccounts;
        public String sRefNumber;
        public String sCardNumber;
        private String[] sProcessAccounts_type_info = new String[]{'sProcessAccounts','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] sRefNumber_type_info = new String[]{'sRefNumber','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] sCardNumber_type_info = new String[]{'sCardNumber','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://tempuri.org/','true','false'};
        private String[] field_order_type_info = new String[]{'sProcessAccounts','sRefNumber','sCardNumber'};
    }
    public class RefundProcessPaymentsResponse_element {
        public String RefundProcessPaymentsResult;
        private String[] RefundProcessPaymentsResult_type_info = new String[]{'RefundProcessPaymentsResult','http://www.w3.org/2001/XMLSchema','string','0','1','false'};
        private String[] apex_schema_type_info = new String[]{'http://tempuri.org/','true','false'};
        private String[] field_order_type_info = new String[]{'RefundProcessPaymentsResult'};
    }
}