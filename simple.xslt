<?sap.transform simple?>
<tt:transform xmlns:tt="http://www.sap.com/transformation-templates">
  <tt:root name="SLA"/>
  <tt:template>
    <object>
      <str name="P_ERP_Instance">
        <tt:value ref="SLA.P_ERP_INSTANCE"/>
      </str>

      <tt:s-cond check="not-initial(SLA.P_ERP_USER_ID)">
        <num name="P_ERP_User_ID">
          <tt:value ref="SLA.P_ERP_USER_ID"/>
        </num>
      </tt:s-cond>
      <tt:s-cond check="initial(SLA.P_ERP_USER_ID)">
        <null name="P_ERP_User_ID"/>
      </tt:s-cond>

      <str name="P_Work_Number">
        <tt:value ref="SLA.P_WORK_NUMBER"/>
      </str>

      <str name="P_Application_Name">
        <tt:value ref="SLA.P_APPLICATION_NAME"/>
      </str>
      <null name="p_Argument1"/>
      <null name="p_Argument2"/>
      <null name="p_Argument3"/>
      <null name="p_Argument4"/>
      <null name="p_Argument5"/>
      <object name="P_Del_Group_List"/>
      <object name="P_New_Group_List"/>

      <object name="P_Iface_Data_List">
        <array name="Iface_Data_Item">

          <tt:loop ref="SLA.P_IFACE_DATA_LIST.IFACE_DATA_ITEM">
            <object>
              <str name="Status">
                <tt:value ref="$ref.STATUS"/>
              </str>
              <str name="Entity">
                <tt:value ref="$ref.ENTITY"/>
              </str>
              <str name="Event_Class">
                <tt:value ref="$ref.EVENT_CLASS"/>
              </str>
              <str name="Event_Type">
                <tt:value ref="$ref.EVENT_TYPE"/>
              </str>
              <str name="Ledger_Id">
                <tt:value ref="$ref.LEDGER_ID"/>
              </str>

              <null name="Pl_And_Sl"/>

              <str name="Transaction_Date">
                <tt:value ref="$ref.TRANSACTION_DATE"/>
              </str>
              <str name="Accounting_Date">
                <tt:value ref="$ref.ACCOUNTING_DATE"/>
              </str>
              <str name="Reverse_Date">
                <tt:value ref="$ref.REVERSE_DATE"/>
              </str>
              <str name="Currency_Code">
                <tt:value ref="$ref.CURRENCY_CODE"/>
              </str>
              <str name="Currency_Conversion_Date">
                <tt:value ref="$ref.CURRENCY_CONVERSION_DATE"/>
              </str>
              <str name="User_Currency_Conversion_Type">
                <tt:value ref="$ref.USER_CURRENCY_CONVERSION_TYPE"/>
              </str>
              <num name="Currency_Conversion_Rate">
                <tt:value ref="$ref.CURRENCY_CONVERSION_RATE"/>
              </num>

              <tt:s-cond check="$ref.ENTERED_DR !='0.00' ">
                <num name="Entered_Dr">
                  <tt:value ref="$ref.ENTERED_DR"/>
                </num>
              </tt:s-cond>
              <tt:s-cond check="$ref.ENTERED_DR='0.00'">
                <null name="Entered_Dr"/>
              </tt:s-cond>

              <tt:s-cond check="$ref.ENTERED_CR !='0.00' ">
                <num name="Entered_Cr">
                  <tt:value ref="$ref.ENTERED_CR"/>
                </num>
              </tt:s-cond>
              <tt:s-cond check="$ref.ENTERED_CR='0.00'">
                <null name="Entered_Cr"/>
              </tt:s-cond>

              <tt:s-cond check="$ref.ACCOUNTED_DR !='0.00' ">
                <num name="Accounted_Dr">
                  <tt:value ref="$ref.ACCOUNTED_DR"/>
                </num>
              </tt:s-cond>
              <tt:s-cond check="$ref.ACCOUNTED_DR='0.00'">
                <null name="Accounted_Dr"/>
              </tt:s-cond>

              <tt:s-cond check="$ref.ACCOUNTED_CR !='0.00' ">
                <num name="Accounted_Cr">
                  <tt:value ref="$ref.ACCOUNTED_CR"/>
                </num>
              </tt:s-cond>
              <tt:s-cond check="$ref.ACCOUNTED_CR='0.00'">
                <null name="Accounted_Cr"/>
              </tt:s-cond>


              <null name="Entered_Amount"/>
              <null name="Accounted_Amount"/>
              <str name="Date_Created">
                <tt:value ref="$ref.DATE_CREATED"/>
              </str>
              <num name="Created_By">
                <tt:value ref="$ref.CREATED_BY"/>
              </num>
              <str name="Last_Update_Date">
                <tt:value ref="$ref.LAST_UPDATE_DATE"/>
              </str>
              <num name="Last_Updated_By">
                <tt:value ref="$ref.LAST_UPDATED_BY"/>
              </num>
              <null name="Code_Combination_Id"/>
              <str name="Segment1">
                <tt:value ref="$ref.SEGMENT1"/>
              </str>
              <str name="Segment2">
                <tt:value ref="$ref.SEGMENT2"/>
              </str>
              <str name="Segment3">
                <tt:value ref="$ref.SEGMENT3"/>
              </str>
              <str name="Segment4">
                <tt:value ref="$ref.SEGMENT4"/>
              </str>
              <str name="Segment5">
                <tt:value ref="$ref.SEGMENT5"/>
              </str>
              <str name="Segment6">
                <tt:value ref="$ref.SEGMENT6"/>
              </str>
              <str name="Segment7">
                <tt:value ref="$ref.SEGMENT7"/>
              </str>
              <str name="Group_Id">
                <tt:value ref="$ref.GROUP_ID"/>
              </str>
              <str name="Request_Id">
                <tt:value ref="$ref.REQUEST_ID"/>
              </str>
              <null name="Subledger_Doc_Sequence_Id"/>
              <null name="Subledger_Doc_Sequence_Value"/>

              <str name="h_Src_Id_2">
                <tt:value ref="$ref.H_SRC_ID_2"/>
              </str>
              <str name="h_Src_Char_1">
                <tt:value ref="$ref.H_SRC_CHAR_1"/>
              </str>
              <str name="l_Src_Id_1">
                <tt:value ref="$ref.L_SRC_ID_1"/>
              </str>
              <str name="Reference10">
                <tt:value ref="$ref.REFERENCE10"/>
              </str>
              <str name="Reference30">
                <tt:value ref="$ref.REFERENCE30"/>
              </str>
              <str name="Actual_Flag">
                <tt:value ref="$ref.ACTUAL_FLAG"/>
              </str>
              <str name="User_Je_Source_Name">
                <tt:value ref="$ref.USER_JE_SOURCE_NAME"/>
              </str>


            </object>
          </tt:loop>

        </array>
      </object>
    </object>

  </tt:template>
</tt:transform>
