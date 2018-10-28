@istest
private class testclass123 // Name of the test class, Can be any name
{         
    static testmethod void testclass123()   // Name of the test method. Must be the same as the class name 
    {
        pagemsgcontroller testcls = new pagemsgcontroller();   // Initialize variable for original class 
        testcls.samplemethod();                        // Call Function of Original class
    }    
}