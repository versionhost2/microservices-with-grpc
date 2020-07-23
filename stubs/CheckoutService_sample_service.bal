import ballerina/grpc;

listener grpc:Listener ep = new (9090);

service CheckoutService on ep {

    resource function Checkout(grpc:Caller caller, stream<Order,error> clientStream) {
        // Implementation goes here.

        // You should return a FinalBill
    }
}

public type Order record {|
    string itemNumber = "";
    int totalQuantity = 0;
    float subTotal = 0.0;
    
|};

public type FinalBill record {|
    float total = 0.0;
    
|};



const string ROOT_DESCRIPTOR = "0A0E636865636B6F75742E70726F746F120B72657461696C5F73686F701A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F22690A054F72646572121E0A0A6974656D4E756D626572180120012809520A6974656D4E756D62657212240A0D746F74616C5175616E74697479180220012805520D746F74616C5175616E74697479121A0A08737562546F74616C1803200128025208737562546F74616C22210A0946696E616C42696C6C12140A05746F74616C1801200128025205746F74616C324D0A0F436865636B6F757453657276696365123A0A08436865636B6F757412122E72657461696C5F73686F702E4F726465721A162E72657461696C5F73686F702E46696E616C42696C6C22002801620670726F746F33";
function getDescriptorMap() returns map<string> {
    return {
        "checkout.proto":"0A0E636865636B6F75742E70726F746F120B72657461696C5F73686F701A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F22690A054F72646572121E0A0A6974656D4E756D626572180120012809520A6974656D4E756D62657212240A0D746F74616C5175616E74697479180220012805520D746F74616C5175616E74697479121A0A08737562546F74616C1803200128025208737562546F74616C22210A0946696E616C42696C6C12140A05746F74616C1801200128025205746F74616C324D0A0F436865636B6F757453657276696365123A0A08436865636B6F757412122E72657461696C5F73686F702E4F726465721A162E72657461696C5F73686F702E46696E616C42696C6C22002801620670726F746F33",
        "google/protobuf/wrappers.proto":"0A1E676F6F676C652F70726F746F6275662F77726170706572732E70726F746F120F676F6F676C652E70726F746F62756622230A0B446F75626C6556616C756512140A0576616C7565180120012801520576616C756522220A0A466C6F617456616C756512140A0576616C7565180120012802520576616C756522220A0A496E74363456616C756512140A0576616C7565180120012803520576616C756522230A0B55496E74363456616C756512140A0576616C7565180120012804520576616C756522220A0A496E74333256616C756512140A0576616C7565180120012805520576616C756522230A0B55496E74333256616C756512140A0576616C756518012001280D520576616C756522210A09426F6F6C56616C756512140A0576616C7565180120012808520576616C756522230A0B537472696E6756616C756512140A0576616C7565180120012809520576616C756522220A0A427974657356616C756512140A0576616C756518012001280C520576616C7565427C0A13636F6D2E676F6F676C652E70726F746F627566420D577261707065727350726F746F50015A2A6769746875622E636F6D2F676F6C616E672F70726F746F6275662F7074797065732F7772617070657273F80101A20203475042AA021E476F6F676C652E50726F746F6275662E57656C6C4B6E6F776E5479706573620670726F746F33"
        
    };
}

