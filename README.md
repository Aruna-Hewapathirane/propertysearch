# propertysearch

![Alt text](https://github.com/Aruna-Hewapathirane/propertysearch/blob/main/Screenshot%20from%202025-01-31%2019-41-25.png)
![Alt text](https://github.com/Aruna-Hewapathirane/propertysearch/blob/main/Screenshot%20from%202025-01-31%2019-41-51.png)

Instructions for Using the Code in the Unit Unit1

This unit defines a simple Delphi-style application that allows you to search for and display the value of a specific property from a control on the form. Below are the steps to understand and use this code:
1. Overview of the Components:

The form has the following components:

    btnSearch: A button that initiates the search when clicked.
    Edit1: A text field (used as an example control to search for properties).
    edtPropertyName: A text field where the user enters the name of the property they want to search for.
    lblPrompt: A label that can be used to guide the user (though not used in the code, it could display messages).
    memoResults: A memo field where the search results (property name and value) will be displayed.
    Panel1: A panel that can be used for layout purposes (it is not used directly in the code but can be customized for visual purposes).

2. Using the Form:
Step 1: Prepare the Environment

Make sure that you have the necessary libraries (Classes, SysUtils, etc.) and that the IDE is set up to compile the code using the correct mode for Free Pascal ({$mode objfpc}). This ensures compatibility with object-oriented features and visual components in Lazarus or Delphi.
Step 2: Understanding the Code

    The GetPropertyValue function retrieves the value of a given property from a control. If the property is not found, it returns 'Property not found!'.
    The btnSearchClick procedure is executed when the Search button (btnSearch) is clicked. It checks if the user has entered a property name and calls the GetPropertyValue function to find and display the property value in the memoResults.

Step 3: Run the Program

    Compile and run the program in your IDE.
    You will see a form with a button, text fields, and a memo.
    To search for a property:
        Enter the name of the property you want to search for in the edtPropertyName field. For example, you might try Text to get the text property of a control.
        Click the Search button.
        The result, including the property name and its value, will be displayed in the memoResults field.

3. Example Walkthrough:

    Property Search Example:
        In the edtPropertyName field, enter Text (which is a property of TEdit controls like Edit1).
        Click the Search button.
        The memoResults will display:

    Searching for property: Text
    ---------------------------
    Value: [text_value_of_Edit1]

Handling Invalid or Non-existent Properties:

    If you enter an invalid property name (e.g., InvalidProperty), the result will be:

        Searching for property: InvalidProperty
        ---------------------------
        Value: Property not found!

4. Code Customization Suggestions:

    Adding More Controls to Search: You can modify the btnSearchClick procedure to check multiple controls on the form (e.g., btnSearch, memoResults, etc.).
    UI Enhancements: You can further enhance the form by adding more controls to display or edit the properties.

5. Key Points to Remember:

    The GetPropertyValue function is designed to handle any control property using Delphi's RTTI (Run-Time Type Information).
    Ensure that the property name entered matches an existing property on the control (case-sensitive).

By following these steps, you can effectively use and modify the code for various types of Delphi-style applications using Free Pascal and Lazarus.
