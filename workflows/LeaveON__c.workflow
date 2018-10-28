<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Approval</fullName>
        <description>Approval</description>
        <protected>false</protected>
        <recipients>
            <recipient>mbalaji105@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>BalajiEmail/LargeInvoiceTemplate</template>
    </alerts>
    <alerts>
        <fullName>Approvedd</fullName>
        <description>Approvedd</description>
        <protected>false</protected>
        <recipients>
            <recipient>mbalaji105@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>BalajiEmail/LeaveApproval</template>
    </alerts>
    <alerts>
        <fullName>Initial</fullName>
        <description>Initial</description>
        <protected>false</protected>
        <recipients>
            <recipient>mbalaji105@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>BalajiEmail/LargeInvoiceTemplate</template>
    </alerts>
    <alerts>
        <fullName>Initial1</fullName>
        <description>Initial1</description>
        <protected>false</protected>
        <recipients>
            <recipient>mbalaji105@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>BalajiEmail/LargeInvoiceTemplate</template>
    </alerts>
    <alerts>
        <fullName>Initial12</fullName>
        <description>Initial12</description>
        <protected>false</protected>
        <recipients>
            <recipient>mbalaji105@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>BalajiEmail/LargeInvoiceTemplate</template>
    </alerts>
    <alerts>
        <fullName>Reject</fullName>
        <description>Reject</description>
        <protected>false</protected>
        <recipients>
            <recipient>mbalaji105@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>BalajiEmail/LargeInvoiceTemplate</template>
    </alerts>
    <alerts>
        <fullName>sdfsd</fullName>
        <description>sdfsd</description>
        <protected>false</protected>
        <recipients>
            <recipient>mbalaji105@gmail.com</recipient>
            <type>user</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>BalajiEmail/LeaveApproval</template>
    </alerts>
    <fieldUpdates>
        <fullName>FinalReg</fullName>
        <field>Status__c</field>
        <literalValue>Regected</literalValue>
        <name>FinalReg</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>FinalRegection</fullName>
        <field>Status__c</field>
        <literalValue>Regected</literalValue>
        <name>FinalRegection</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ForApprove</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>ForApprove</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Forinitial</fullName>
        <field>Status__c</field>
        <literalValue>Pending</literalValue>
        <name>Forinitial</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Initial</fullName>
        <field>Status__c</field>
        <literalValue>Pending</literalValue>
        <name>Initial</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Int</fullName>
        <field>Status__c</field>
        <literalValue>Pending</literalValue>
        <name>Int</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Recall</fullName>
        <field>Status__c</field>
        <literalValue>Pending</literalValue>
        <name>Recall</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>finalapprove</fullName>
        <field>Status__c</field>
        <literalValue>Approved</literalValue>
        <name>finalapprove</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
</Workflow>