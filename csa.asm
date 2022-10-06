.MODEL SMALL
.STACK 100
.DATA
        SPLASH_SCREEN   DB "              %%      %%  %%       %%        %%       %%%%%%%%%",10,13
                        DB "              %%      %%  %%       %%       %%%%         %%",10,13
                        DB "              %%      %%  %%       %%      %%  %%        %%",10,13
                        DB "              %% %%%% %%  %%       %%     %%    %%       %%",10,13
                        DB "              %%      %%  %%       %%    %% %%%% %%      %%",10,13
                        DB "              %%      %%  %%       %%   %%        %%     %%",10,13
                        DB "              %%      %%   %% %%%%  %  %%          %%    %%" ,10,13
                        DB "                                                                               ",10,13
                        DB "        %%        %%%%  %%%%%%%%         %%      %%%%  %%%      %%  %%%%%%%%" ,10,13
                        DB "       %%%%        %%   %%    %%%        %%       %%   %% %%    %%  %%",10,13
                        DB "      %%  %%       %%   %%    %%%        %%       %%   %%  %%   %%  %%",10,13
                        DB "     %%    %%      %%   %% %%%           %%       %%   %%   %%  %%  %%%%%%%%",10,13
                        DB "    %% %%%% %%     %%   %%  %%           %%       %%   %%    %% %%  %%",10,13
                        DB "   %%        %%    %%   %%    %%         %%       %%   %%      %%%  %%",10,13
                        DB "  %%          %%  %%%%  %%      %%       %%%%%%  %%%%  %%       %%  %%%%%%%%$",10,13

        D_ACC DB "DO U HAVE AN ACCOUNT(y/n): $"
        YN DB ?        
        NL DB 0DH,0AH,"$"
        ACC DB 's','s','w','o','n','g','1','2','1','2','@','g','m','a','i','l','.','c','o','m'
        ACC_PASSWORD DB 's','a','i','s','e','n','g','1','2','3'
        ACC2 DB 's','s','w','o','n','g'
        ACC2_PASSWORD DB 's','a','i','s','e','n','g','1','2'
        HUNDRED DB 100
        TEN DB 10

        D_LOGIN DB "+-+-+-+-+-+-+-+-+-+-LOGIN MODULE+-+-+-+-+-+-+-+-+-+-+-",0DH,0AH,"$"
        D_ENTEREMAIL DB "ENTER EMAIL: $"
        D_ENTERPASSWORD DB "ENTER PASSWORD: $"
        D_LOGINSUCCESS DB "LOGIN SUCCESSFUL$"

        IEMAIL LABEL BYTE 
	    E_MAXNUM DB 21    
	    E_ACTNUM DB ?
        INPUTEMAIL DB 21 DUP("$")

        IPASSWORD LABEL BYTE 
	    P_MAXNUM DB 21    
	    P_ACTNUM DB ?
        INPUTPASSWORD DB 21 DUP("$")

        D_REGISTER DB "+-+-+-+-+-+-+-+-+-+-REGISTER MODULE+-+-+-+-+-+-+-+-+-+-+-",0DH,0AH,"$"
        D_LINE DB "======================================================",0DH,0AH,"$"
        D_RFULLNAME DB "ENTER YOUR FULL NAME :$"
        D_RENTERGENDER DB "ENTER YOUR GENDER(M/F) :$"
        D_RPHONENO DB "ENTER YOUR PHONE NUMBER :$"
        D_REMAIL DB "ENTER NEW EMAIL :$"
        D_RPASSWORD DB "ENTER NEW PASSWORD(AT LEAST 8 WORDS) :$"
        D_REGISTERSUCCESS DB "REGISTER SUCCESSFUL",0DH,0AH,"$"

        IR_NAME LABEL BYTE 
	    N_MAXNUM DB 21    
	    N_ACTNUM DB ?
        INPUTRNAME DB 21 DUP("$")

        GENDER DB ?

        IR_PHONE LABEL BYTE 
	    N_MAXNUM1 DB 12   
	    N_ACTNUM1 DB ?
        INPUTRPHONE DB 12 DUP("$")

        IR_EMAIL LABEL BYTE 
	    N_MAXNUM2 DB 30   
	    N_ACTNUM2 DB ?
        INPUTREMAIL DB 30 DUP("$")

        IR_PASSWORD LABEL BYTE 
	    N_MAXNUM3 DB 20   
	    N_ACTNUM3 DB ?
        INPUTRPASSWORD DB 20 DUP("$")

        D_MENU DB "+-+-+-+-+-+-+-+-+-+-MAIN MENU+-+-+-+-+-+-+-+-+-+-+-",0DH,0AH,"$"
        D_TICKETORDERING DB "1. TICKET ORDERING",0DH,0AH,"$"
        D_SUMMARY DB "2. SUMMARY",0DH,0AH,"$"
        D_EXIT DB "3. EXIT",0DH,0AH,"$"
        D_ENTERCHOICE DB "ENTER YOUR CHOICE(1/2/3): $"
        D_INVALIDCHOICE DB "INVALID CHOICE PLS ENTER AGAIN",0DH,0AH,"$"


        D_PAYMENT DB 0DH,0AH,"+-+-+-+-+-+-+-+-+-+-PAYMENT MODULE+-+-+-+-+-+-+-+-+-+-+-",0DH,0AH,"$"
        D_PAYAMOUNT DB "TOTAL AMOUNT : RM $"
        D_PAYMENTMETHOD1 DB "1. ONLINE BANKING",0DH,0AH,"$"
        D_PAYMENTMETHOD2 DB "2. CREDIT CARD",0DH,0AH,"$"
        D_CHOICE DB "ENTER YOUR CHOICE(1 OR 2) :$"
        I_CHOICE DB ?
        D_METHOD1USERNAME DB "USERNAME :$"
        D_METHOD1PASSWORD DB "PASSWORD :$"

        IP_USERNAME LABEL BYTE 
	    P_MAXNUM2 DB 20   
	    P_ACTNUM2 DB ?
        INPUTPUSERNAME DB 20 DUP("$")

        IP_PASSWORD LABEL BYTE 
	    P_MAXNUM3 DB 20   
	    P_ACTNUM3 DB ?
        INPUTPPASSWORD DB 20 DUP("$")

        ;Payment Module
        P_UserPaySTR LABEL BYTE
        P_UserPayMAXN DB 3
        P_UserPayACTN DB ?
        P_UserPayINPUTSTR DB 3 DUP("$")

        P_PaymentSection DB 0AH,0DH,"+-+-+-+-+-+-+-+-<<PAYMENT SECTION>>-+-+-+-+-+-+-+-+-+-",0AH,0DH,"$"
        P_Enter2DigitPaymentStr DB "Please Enter the amount you want to pay in 2 Digit (01~99): RM $"
        P_UserPayMsg DB "User Pay : RM $"
        P_NoEnoughMsg DB "Amount need to Pay : RM $"
        P_EnoughMsg DB "Here is the change : RM $" 
        P_InvPaymentMsg DB "Invalid digit ! ",0AH,0DH,"$"
        P_AmountNeedToPay DW 0
        P_CurrentPayAmount DW 0

        ;Ticket Module data
        UserNameSTR LABEL BYTE
        UserNameMAXN DB 30
        UserNameACTN DB ?
        UserNameINPUTSTR DB 30 DUP("$")
        DateSTR LABEL BYTE
        DateMAXN DB 12
        DateACTN DB ?
        DateINPUTSTR DB 12 DUP("$")

        T_TicketOrdering DB "+-+-+-+-+-+-+-+TICKET ORDERING MODULE+-+-+-+-+-+-+-+-+",0DH,0AH,"$"
        EnterDepStr DB "Please enter your Deparature : $"
        EnterDesStr DB "Please enter your Destination : $"
        EnterNameStr DB "Please enter your name : $"
        EnterDayStr DB "Please enter your Date (DD/MM/YYYY) : $"
        EnterTicketNo DB "Please enter your ticket choice : $"

        T_PlaceMenu DB "================PLACE MENU================= ",0DH,0AH,"$"
        PlaceIndex DB 1
        PlaceBracket DB ')'
        Place1 DB  " KualaLumpur $"
        Place2 DB  " PulauPenang $"
        Place3 DB  " Kelantan $"
        Place4 DB  " Kedah $"
        Place5 DB  " Sabah $"
        T_TicketMenu DB "================TICKET MENU=================",0DH,0AH,"$"
        TicketMorning DB " Morning Ticket From 8:00am , Price : RM 56.00",0DH,0AH,"$"
        TicketEvening DB " Evening Ticket From 2:00pm , Price : RM 62.00",0DH,0AH,"$"
        TicketNight DB " Night Ticket From 9:00pm , Price : RM 66.00",0DH,0AH,"$"

        
        DeparatureMsg DB "Your Departure is $"
        DestinationMsg DB "Your Destination is $"
        NameMsg DB "Your Name is $"
        DateMsg DB "Your Date is $"
        MorningTicMsg DB "Your Selected Morning Ticket",0DH,0AH,"$"
        EveningTicMsg DB "Your Selected Evening Ticket",0DH,0AH,"$"
        NightTicMsg DB "Your Selected Night Ticket",0DH,0AH,"$"

        InvSelectMsg DB "Invalid Input , Please Enter within 1~5",0DH,0AH,"$"
        InvTicketMsg DB "Invalid Input , Please Enter within 1~3",0DH,0AH,"$"
        InvNameMsg DB "Invalid Name Format , Only Alphabets can be accepted",0DH,0AH,"$"
        InvDateMsg DB "Invalid Date Format , Please follow this format DD/MM/YYYY",0DH,0AH,"$"
        InvPlaceMsg DB "Depature & Destination cannot be Same Place , Please Pick again",0DH,0AH,"$"
    
        TicketFromMsg DB "Ticket from $"
        TicketToMsg DB "To $"

        depChoice DB ?
        desChoice DB ?
        ticketNo DB ?
        Departure DB 14 DUP("$")
        Destination DB 14 DUP("$")

        MorningTicketPrice DW 56
        EveningTicketPrice DW 62
        NightTicketPrice DW 66
        currentTicPrice DW ?

        ;Discount Module
        DI_DiscountTitle DB 0DH,0AH,"================DISCOUNT================= ",0DH,0AH,"$"
        DI_OriPriceMsg DB "Original Price is : RM $"
        DI_DiscountPriceMsg DB "Ticket Price after 20% discount : RM $"
        DI_PriceAfterAddOnMsg DB "Ticket Price after add-on : RM $"
        DI_addOnMenu DB "================ADD ON MENU================= ",0DH,0AH,"$"
        DI_addOnContent DB " Extra Baggage  Fee : RM 20.00 ",0DH,0AH," On Air Meal  Fee : RM 9.00",0DH,0AH," Travel Insurance  Fee : RM 10.00",0DH,0AH,0DH,0AH,"$"
        DI_addOnMsg1 DB "Want add Extra Baggage (y/n) : $"
        DI_addOnMsg2 DB "Want add Airline Meal (y/n) : $"
        DI_addOnMsg3 DB "Want add Travel Insurance (y/n) : $"
        DI_invAddOnMsg DB "Invalid Input , Please Enter Y or N ",0DH,0AH,"$"

        ;Ticket add-on
        DI_ticPrice DB 66
        DI_addOnList DB 20,9,10
        DI_currentAddOn DW 0
        DI_addOnChoice DB ?

        ;Receipt Module
        R_ReceiptR DB "+-+-+-+-+-+-+-+-+-+-Receipt+-+-+-+-+-+-+-+-+-+-+-",0DH,0AH,"$"
        R_LINE DB "======================================================",0DH,0AH,"$"
        R_Name DB " Name : $"
        R_Date DB " Date : $"
        R_Dep DB " Ticket From $"
        R_Des DB " Ticket To $"
        R_TicPrice DB " Ticket Price : RM $"

        D_BACKTOMENU DB "DO YOU WANT TO RETURN TO MENU? (y/n): $"

        M_PurchaseTime DW 0
        ;Summary Report 
        S_ReportTitle DB 0DH,0AH,"+-+-+-+-+-+-+-+-+-+-SUMMARY REPORT+-+-+-+-+-+-+-+-+-+-+-",0DH,0AH,"$"
        S_DispenseTitle DB 0DH,0AH,"================ DISPENSE LIST ================",0DH,0AH,"$"
        S_DispenseFooter DB 0DH,0AH,"================ REPORT END ================",0DH,0AH,"$"
        S_Index DB 1
        S_Bracket DB ") RM $"
        ;S_DispenseRecord DW 1000,2020,0030,0040,0050
        S_DCNum DB 00,00,00,00,00
        S_FLNum DB 00,00,00,00,00
        ;S_CurrentIndex DB 0DH,0AH,"Current Index : $"
        S_PurchaseDateMsg DB "   Purchase Date : $"
        S_DateList DB 56 DUP("$")
        S_CurrentDate DW 0
        S_DateSize DW 11
        S_ReadDate DW 0
        S_WriteSize DW 11

        DEB_ReadDate DB 0DH,0AH,"Current Date Index : $"
        DEB_AddedReadDate DB 0DH,0AH,"Current Date Index After added : $"
        DEB_DateRecord DB 0DH,0AH,"Current Date Recorded : $"

        ;Display float
        nume DB 80
        hun DB 100
        dcnum DB ?
        flnum DB ?
        fDot DB '.'

.CODE
CLEARSCREEN PROC
        MOV AH,00H    
        MOV AL,03H
        MOV BH,07    
        MOV CX,0000H    
        MOV DX,184FH    
        INT 10H
        RET
CLEARSCREEN ENDP

MAIN PROC
        MOV AX,@DATA
        MOV DS,AX
        ;JMP TICKETORDERMODULE
        ;JMP MAINMENU
        ;JMP PAYMENTMODULE

CALL CLEARSCREEN
        MOV AH,09H              ;NEWLINE
        LEA DX,SPLASH_SCREEN
        INT 21H

        MOV AH,09H              ;NEWLINE
        LEA DX,NL
        INT 21H

        MOV AH,09H              ;NEWLINE
        LEA DX,NL
        INT 21H
AGAIN:
        MOV AH,09H              ;ASK USER GOT ACCOUNT OR NOT
    	LEA DX,D_ACC
    	INT 21H 

        MOV AH,01H              ;YES OR NO
    	INT 21H
    	MOV YN,AL

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        CMP YN,"y"
        JE LOGINMODULE
        CMP YN,"n"
        JE LOOPREGISTERMODULE
        JMP AGAIN
JMP EXIT
LOOPREGISTERMODULE:
        JMP REGISTERMODULE
JMP EXIT
LOGINMODULE:
CALL CLEARSCREEN
        MOV AH,09H              ;LOGIN SCREEN
    	LEA DX,D_LOGIN
    	INT 21H 

        MOV AH,09H
    	LEA DX,D_LINE
    	INT 21H 

        MOV AH,09H              ;EMAIL
    	LEA DX,D_ENTEREMAIL
    	INT 21H 

        MOV AH,0AH              ;INPUT EMAIL STRING
	    LEA DX,IEMAIL
	    INT 21H

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        MOV AH,09H              ;PASSWORD
    	LEA DX,D_ENTERPASSWORD
    	INT 21H 

        MOV AH,0AH              ;INPUT PASSWORD STRING
	    LEA DX,IPASSWORD
	    INT 21H

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        CMP E_ACTNUM,20
        JNE LOGINMODULE
        MOV CH,0
        MOV CL,E_ACTNUM
        MOV SI,0
CHECKEMAIL:
        MOV AL,ACC[SI]
        CMP INPUTEMAIL[SI],AL
        JNE LOGINMODULE
        INC SI
LOOP CHECKEMAIL

        CMP P_ACTNUM,10
        JNE LOGINMODULE
        MOV CH,0
        MOV CL,P_ACTNUM
        MOV SI,0
CHECKPASSWORD:
        MOV AL,ACC_PASSWORD[SI]
        CMP INPUTPASSWORD[SI],AL
        JNE LOGINMODULE
        INC SI
LOOP CHECKPASSWORD
        JMP SUCCESSLOGIN

JMP EXIT
REGISTERMODULE:
CALL CLEARSCREEN
        MOV AH,09H              ;REGISTER SCREEN
    	LEA DX,D_REGISTER
    	INT 21H 

        MOV AH,09H
    	LEA DX,D_LINE
    	INT 21H 

        MOV AH,09H              ;FULL NAME
    	LEA DX,D_RFULLNAME
    	INT 21H 

        MOV AH,0AH              ;INPUT REMAIL STRING
	    LEA DX,IR_NAME
	    INT 21H
WRONGGENDER:
        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        MOV AH,09H              ;GENDER
    	LEA DX,D_RENTERGENDER
    	INT 21H 
          
        MOV AH,01H              ;INPUT GENDER STRING
        INT 21H
        MOV GENDER,AL 

        CMP GENDER,"m"
        JE CONTINUE
        CMP GENDER,"f"
        JE CONTINUE

        JMP WRONGGENDER
CONTINUE:
        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        MOV AH,09H              ;PHONE NO
    	LEA DX,D_RPHONENO
    	INT 21H 

        MOV AH,0AH              ;INPUT PHONE STRING
	    LEA DX,IR_PHONE
	    INT 21H

        CMP N_ACTNUM1,10
        JL CONTINUE

        MOV SI,0
        CMP INPUTRPHONE[SI],'0'
        JNE CONTINUE
        INC SI
        CMP INPUTRPHONE[SI],'1'
        JNE CONTINUE

        MOV CH,0
        MOV CL,N_ACTNUM1
        MOV SI,0
CHECKPHONE:
        CMP INPUTRPHONE[SI],'9'
        JG CONTINUE
        INC SI
LOOP CHECKPHONE 

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        MOV AH,09H              ;EMAIL
    	LEA DX,D_REMAIL
    	INT 21H 

        MOV AH,0AH              ;INPUT EMAIL STRING
	    LEA DX,IR_EMAIL
	    INT 21H

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

IF_WRONGFORMAT:
        MOV AH,09H              ;PASSWORD
    	LEA DX,D_RPASSWORD
    	INT 21H 

        MOV AH,0AH              ;INPUT PASSWORD STRING
	    LEA DX,IR_PASSWORD
	    INT 21H

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        CMP N_ACTNUM3,7
        JL IF_WRONGFORMAT

        MOV AH,09H              ;REGISTER SUCCESSFUL
	    LEA DX,D_REGISTERSUCCESS
	    INT 21H

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        JMP LOGINMODULE2
JMP EXIT
LOGINMODULE2:
        MOV AH,09H              ;LOGIN SCREEN
    	LEA DX,D_LOGIN
    	INT 21H 

        MOV AH,09H
    	LEA DX,D_LINE
    	INT 21H 

        MOV AH,09H              ;EMAIL
    	LEA DX,D_ENTEREMAIL
    	INT 21H 

        MOV AH,0AH              ;INPUT EMAIL STRING
	    LEA DX,IEMAIL
	    INT 21H

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        MOV AH,09H              ;PASSWORD
    	LEA DX,D_ENTERPASSWORD
    	INT 21H 

        MOV AH,0AH              ;INPUT PASSWORD STRING
	    LEA DX,IPASSWORD
	    INT 21H

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        MOV CH,0
        MOV CL,N_ACTNUM2
        MOV SI,0
CHECKEMAIL2:
        MOV AL,INPUTEMAIL[SI]
        CMP INPUTREMAIL[SI],AL
        JNE LOGINMODULE2
        INC SI
LOOP CHECKEMAIL2

        MOV CH,0
        MOV CL,N_ACTNUM3
        MOV SI,0
CHECKPASSWORD2:
        MOV AL,INPUTPASSWORD[SI]
        CMP INPUTRPASSWORD[SI],AL
        JNE LOGINMODULE2
        INC SI
LOOP CHECKPASSWORD2
        JMP SUCCESSLOGIN

JMP EXIT
SUCCESSLOGIN:
        MOV AH,09H              ;LOGIN SUCCESSFUL
	    LEA DX,D_LOGINSUCCESS
	    INT 21H

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        JMP MAINMENU

JMP EXIT
MAINMENU:
CALL CLEARSCREEN
        MOV AH,09H              ;MENU SCREEN
    	LEA DX,D_MENU
    	INT 21H 

        MOV AH,09H
    	LEA DX,D_LINE
    	INT 21H 

        MOV AH,09H              ;MENU SCREEN
    	LEA DX,D_TICKETORDERING
    	INT 21H 

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        MOV AH,09H
    	LEA DX,D_SUMMARY
    	INT 21H 

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        MOV AH,09H
        LEA DX,D_EXIT
        INT 21H 

        MOV AH,09H              ;NEWLINE
        LEA DX,NL
        INT 21H

        MOV AH,09H              ;ENTER CHOICE 
    	LEA DX,D_ENTERCHOICE
    	INT 21H 

        MOV AH,01H              ;CHOICE 
    	INT 21H
        SUB AL,30H
    	MOV I_CHOICE,AL

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        CMP I_CHOICE,1
        JE TICKETORDERMODULE
        CMP I_CHOICE,2
        JE LJumpSummary
        CMP I_CHOICE,3
        JE JMPEXIT

        JMP MAINMENU
        JMPEXIT:
            JMP EXIT
JMP EXIT

LJumpSummary:
    JMP SUMMARYMODULE

TICKETORDERMODULE:
;Ticket Module Start<
CALL CLEARSCREEN
    LEnterName:
        MOV AH,09H
        LEA DX,T_TicketOrdering
        INT 21H

        MOV AH,09H
        LEA DX,EnterNameStr
        INT 21H

        MOV AH,0AH
        LEA DX,UserNameSTR
        INT 21H

        MOV AH,09H
        LEA DX,NL
        INT 21H

        MOV CH,0
        MOV CL,UserNameACTN
        MOV SI,0
        LCheckName:
            CMP UserNameINPUTSTR[SI],65
	        JB LInvUserName
	        CMP UserNameINPUTSTR[SI],90
	        JA LInvUserName
		    INC SI
        LOOP LCheckName

        MOV AH,09H
        LEA DX,NameMsg
        INT 21H

        MOV AH,09H
        LEA DX,UserNameINPUTSTR
        INT 21H

        MOV AH,09H
        LEA DX,NL
        INT 21H
        JMP LEnterDate

	    LInvUserName:
            MOV AH,09H
            LEA DX,InvNameMsg
            INT 21H
            JMP LEnterName

        LEnterDate:
        MOV AH,09H
        LEA DX,EnterDayStr
        INT 21H

        MOV AH,0AH
        LEA DX,DateSTR ;Input Date
        INT 21H

        MOV AH,09H
        LEA DX,NL
        INT 21H

        MOV BL,DateACTN
        CMP BL,10
        JNE LInvDateDigit

        MOV BL,DateINPUTSTR[2]
        CMP BL,'/'
        JNE LInvDateDigit

        MOV BL,DateINPUTSTR[5]
        CMP BL,'/'
        JNE LInvDateDigit

        MOV CH,0
        MOV CL,DateACTN
        MOV SI,0
        LCheckDate:
            CMP DateINPUTSTR[SI],47
	        JB LInvDateDigit
	        CMP DateINPUTSTR[SI],57
	        JA LInvDateDigit
		    INC SI
        LOOP LCheckDate

        MOV AH,09H
        LEA DX,DateMsg ;Print Your date is
        INT 21H

        MOV AH,09H
        LEA DX,DateINPUTSTR 
        INT 21H

        MOV AH,09H
        LEA DX,NL
        INT 21H


        MOV AH,09H
        LEA DX,NL
        INT 21H

        JMP LMenuChoice
	    LInvDateDigit:
            MOV AH,09H
            LEA DX,InvDateMsg
            INT 21H
            JMP LEnterDate


;Display Place Menu Choice
    LMenuChoice:
    CALL CLEARSCREEN
        MOV AH,09H
        LEA DX, T_PlaceMenu
        INT 21H
        MOV AH,02H
        MOV DL,PlaceIndex
        ADD DL,30H
        INT 21H
        INC PlaceIndex
        MOV AH,02H
        MOV DL,PlaceBracket
        INT 21H
        MOV AH,09H
        LEA DX, Place1
        INT 21H
        MOV AH,09H
        LEA DX, NL
        INT 21H
    
        MOV AH,02H
        MOV DL,PlaceIndex
        ADD DL,30H
        INT 21H
        INC PlaceIndex
        MOV AH,02H
        MOV DL,PlaceBracket
        INT 21H
        MOV AH,09H
        LEA DX, Place2
        INT 21H
        MOV AH,09H
        LEA DX, NL
        INT 21H

        MOV AH,02H
        MOV DL,PlaceIndex
        ADD DL,30H
        INT 21H
        INC PlaceIndex
        MOV AH,02H
        MOV DL,PlaceBracket
        INT 21H
        MOV AH,09H
        LEA DX, Place3
        INT 21H
        MOV AH,09H
        LEA DX, NL
        INT 21H

        MOV AH,02H
        MOV DL,PlaceIndex
        ADD DL,30H
        INT 21H
        INC PlaceIndex
        MOV AH,02H
        MOV DL,PlaceBracket
        INT 21H
        MOV AH,09H
        LEA DX, Place4
        INT 21H
        MOV AH,09H
        LEA DX, NL
        INT 21H

        MOV AH,02H
        MOV DL,PlaceIndex
        ADD DL,30H
        INT 21H
        INC PlaceIndex
        MOV AH,02H
        MOV DL,PlaceBracket
        INT 21H
        MOV AH,09H
        LEA DX, Place5
        INT 21H
        MOV AH,09H
        LEA DX, NL
        INT 21H

;Departure
    LDepatureStart:
        MOV SI,0
	    MOV DI,0
        MOV AH,09H
        LEA DX, EnterDepStr
        INT 21H

        MOV AH,01H
        INT 21H
        SUB AL,30h  
        MOV depChoice,AL

        MOV AH,09H
        LEA DX, NL
        INT 21H

        CMP depChoice,1
	    JB LInvDep
	    CMP depChoice,5
	    JA LInvDep
        JMP DepValid
        LInvDep:	
		    MOV AH,09H
		    LEA DX, InvSelectMsg
		    INT 21H
            JMP LDepatureStart

        DepValid:
        CMP depChoice,1
	    JE LDepPlace1
        CMP depChoice,2
	    JE LDepPlace2
        CMP depChoice,3
	    JE LDepPlace3
        CMP depChoice,4
	    JE LDepPlace4
        CMP depChoice,5
	    JE LDepPlace5
		    JMP FinDepCondition
	    LDepPlace1:
	        LDep1:
		        MOV BL,Place1[SI]
                MOV Departure[DI],BL
                CMP Place1[SI],'$'
		        JE LDepEndCpy
		        INC SI
		        INC DI
                JMP LDep1
    	    LDepEndCpy:
                JMP FinDepCondition
        LDepPlace2:
	        LDep2:
		        MOV BL,Place2[SI]
                MOV Departure[DI],BL
                CMP Place2[SI],'$'
		        JE LDepEndCpy2
		        INC SI
		        INC DI
                JMP LDep2
    	    LDepEndCpy2:
                JMP FinDepCondition
        LDepPlace3:
	        LDep3:
		        MOV BL,Place3[SI]
                MOV Departure[DI],BL
                CMP Place3[SI],'$'
		        JE LDepEndCpy3
		        INC SI
		        INC DI
                JMP LDep3
    	    LDepEndCpy3:
                JMP FinDepCondition
        LDepPlace4:
	        LDep4:
		        MOV BL,Place4[SI]
                MOV Departure[DI],BL
                CMP Place4[SI],'$'
		        JE LDepEndCpy4
		        INC SI
		        INC DI
                JMP LDep4
    	    LDepEndCpy4:
                JMP FinDepCondition
        LDepPlace5:
	        LDep5:
		        MOV BL,Place5[SI]
                MOV Departure[DI],BL
                CMP Place5[SI],'$'
		        JE LDepEndCpy5
		        INC SI
		        INC DI
                JMP LDep5
    	    LDepEndCpy5:

	FinDepCondition:
    MOV AH,09H
    LEA DX, NL
    INT 21H
    MOV AH,09H
    LEA DX, DeparatureMsg
    INT 21H

    MOV AH,09H
    LEA DX, Departure
    INT 21H

    MOV AH,09H
    LEA DX, NL
    INT 21H	


;Destinaton
    LDestinationStart:
        MOV SI,0
	    MOV DI,0

        MOV AH,09H
        LEA DX, EnterDesStr
        INT 21H

        MOV AH,01H
        INT 21H
        SUB AL,30h  
        MOV desChoice,AL

        MOV AH,09H
        LEA DX, NL
        INT 21H	
    
        CMP desChoice,1
	    JB LInvDes
	    CMP desChoice,5
	    JA LInvDes
        JMP DesValid
        LInvDes:	
		    MOV AH,09H
		    LEA DX, InvSelectMsg
		    INT 21H
            JMP LDestinationStart

    DesValid:
    MOV BL , depChoice
    CMP desChoice,BL
    JE LPlaceInvalid
    CMP desChoice,1
	JE LDesPlace1
    CMP desChoice,2
	JE LDesPlace2
    CMP desChoice,3
	JE LDesPlace3
    CMP desChoice,4
	JE LDesPlace4
    CMP desChoice,5
	JE LDesPlace5
		
    LPlaceInvalid:
        MOV AH,09H
        LEA DX, InvPlaceMsg
        INT 21H
        JMP LDepatureStart
  
	LDesPlace1:
	    LDes1:
		    MOV BL,Place1[SI]
            MOV Destination[DI],BL
            CMP Place1[SI],'$'
		    JE LDesEndCpy
		    INC SI
		    INC DI
            JMP LDes1
    	LDesEndCpy:
        JMP FinDesCondition
    LDesPlace2:
	    LDes2:
		    MOV BL,Place2[SI]
            MOV Destination[DI],BL
            CMP Place2[SI],'$'
		    JE LDesEndCpy2
		    INC SI
		    INC DI
            JMP LDes2
    	LDesEndCpy2:
        JMP FinDesCondition
    LDesPlace3:
	    LDes3:
		    MOV BL,Place3[SI]
            MOV Destination[DI],BL
            CMP Place3[SI],'$'
		    JE LDesEndCpy3
		    INC SI
		    INC DI
            JMP LDes3
    	LDesEndCpy3:
        JMP FinDesCondition
    LDesPlace4:
	    LDes4:
		    MOV BL,Place4[SI]
            MOV Destination[DI],BL
            CMP Place4[SI],'$'
		    JE LDesEndCpy4
		    INC SI
		    INC DI
            JMP LDes4
    	LDesEndCpy4:
        JMP FinDesCondition
    LDesPlace5:
	    LDes5:
		    MOV BL,Place5[SI]
            MOV Destination[DI],BL
            CMP Place5[SI],'$'
		    JE LDesEndCpy5
		    INC SI
		    INC DI
            JMP LDes5
    	LDesEndCpy5:
        JMP FinDesCondition
	FinDesCondition:

        MOV AH,09H
        LEA DX, NL
        INT 21H
        MOV AH,09H
        LEA DX, DestinationMsg
        INT 21H

        MOV AH,09H
        LEA DX, Destination
        INT 21H

        MOV AH,09H
        LEA DX, NL
        INT 21H			
        MOV AH,09H
        LEA DX, TicketFromMsg
        INT 21H
        MOV AH,09H
        LEA DX, Departure
        INT 21H
        MOV AH,09H
        LEA DX, TicketToMsg
        INT 21H
        MOV AH,09H
        LEA DX, Destination
        INT 21H
        MOV AH,09H
        LEA DX, NL
        INT 21H

;Display Ticket Menu
    LTicketChoice:
    CALL CLEARSCREEN
        MOV AH,09H
        LEA DX, NL
        INT 21H

        MOV AH,09H
        LEA DX, T_TicketMenu
        INT 21H
        MOV BL,1
        MOV PlaceIndex,BL

        MOV AH,02H
        MOV DL,PlaceIndex
        ADD DL,30H
        INT 21H
        INC PlaceIndex
        MOV AH,02H
        MOV DL,PlaceBracket
        INT 21H
        MOV AH,09H
        LEA DX, TicketMorning
        INT 21H
    
        MOV AH,02H
        MOV DL,PlaceIndex
        ADD DL,30H
        INT 21H
        INC PlaceIndex
        MOV AH,02H
        MOV DL,PlaceBracket
        INT 21H
        MOV AH,09H
        LEA DX, TicketEvening
        INT 21H

        MOV AH,02H
        MOV DL,PlaceIndex
        ADD DL,30H
        INT 21H
        INC PlaceIndex
        MOV AH,02H
        MOV DL,PlaceBracket
        INT 21H
        MOV AH,09H
        LEA DX, TicketNight
        INT 21H

    LSelectTicket:
        MOV AH,09H
        LEA DX, EnterTicketNo
        INT 21H

        MOV AH,01H
        INT 21H
        SUB AL,30h
        MOV ticketNo,AL

        MOV AH,09H
        LEA DX, NL
        INT 21H

        CMP ticketNo,1
	    JB LInvTicketNo
	    CMP ticketNo,3
	    JA LInvTicketNo
        JMP TicNumValid
        LInvTicketNo:	
		    MOV AH,09H
		    LEA DX, InvTicketMsg
		    INT 21H
            JMP LSelectTicket

        TicNumValid:
        CMP ticketNo,1
	    JE LTicketMorning
        CMP ticketNo,2
	    JE LTicketEvening
        CMP ticketNo,3
	    JE LTicketNight

        LTicketMorning:
            MOV BX ,MorningTicketPrice
            MOV currentTicPrice,BX
            MOV AH,09H
		    LEA DX, MorningTicMsg
		    INT 21H
            JMP LEndTicket
        LTicketEvening:
            MOV BX ,EveningTicketPrice
            MOV currentTicPrice,BX
            MOV AH,09H
		    LEA DX, EveningTicMsg
		    INT 21H
            JMP LEndTicket
        LTicketNight:
            MOV BX ,NightTicketPrice
            MOV currentTicPrice,BX
            MOV AH,09H
		    LEA DX, NightTicMsg
		    INT 21H
        LEndTicket:

;Discount Module
CALL CLEARSCREEN
    MOV AH,09H
    LEA DX, DI_DiscountTitle
    INT 21H

    MOV AH,09H
    LEA DX, DI_OriPriceMsg
    INT 21H

    MOV AX,currentTicPrice
    DIV TEN
    MOV BX,AX
    MOV flnum ,BH

    MOV AH,02H
    MOV DL,BL
    ADD DL,30H
    INT 21H

    MOV AH,02H
    MOV DL,BH
    ADD DL,30H
    INT 21H

    MOV AH,09H
    LEA DX, nl
    INT 21H

    MOV AH,09H
    LEA DX, DI_DiscountPriceMsg
    INT 21H
    MOV AX, currentTicPrice;AL=90
    MUL nume;AX = 1840 ;Use this for addition an subtract

    MOV currentTicPrice,AX
    DIV hun;deno 100 , AH = 40 AL=18
    MOV flnum ,AH;flnum=40
    MOV dcnum ,AL ;dcnum=18

;Display Ticket Price after discount
    MOV AH,0
    MOV AL,dcnum
    DIV ten
    MOV BX,AX

    MOV AH,02H
    MOV DL,BL
    ADD DL,30H
    INT 21H

    MOV AH,02H
    MOV DL,BH
    ADD DL,30H
    INT 21H

    MOV AH,02H
    MOV DL,fDot
    INT 21H

    MOV AH,0
    MOV AL , flnum
    DIV TEN
    MOV BX,AX

    MOV AH,02H
    MOV DL,BL
    ADD DL,30H
    INT 21H

    MOV AH,02H
    MOV DL,BH
    ADD DL,30H
    INT 21H

    MOV AH,09H
    LEA DX, NL
    INT 21H
;Add On Module here
        MOV SI,0
        MOV AH,09H
        LEA DX, DI_addOnMenu
        INT 21H

        MOV AH,09H
        LEA DX, DI_addOnContent
        INT 21H

    LTicAddOn:
        CMP SI ,0
        JE LShowBaggage
        CMP SI ,1
        JE LShowMeal
        CMP SI ,2
        JE LShowInsurance
        JMP FinAddOn
    LShowBaggage:
        MOV AH,09H
        LEA DX, DI_addOnMsg1
        INT 21H
        JMP LUserChoiceAddOn
    LShowMeal:
        MOV AH,09H
        LEA DX, DI_addOnMsg2
        INT 21H
        JMP LUserChoiceAddOn
    LShowInsurance:
        MOV AH,09H
        LEA DX, DI_addOnMsg3
        INT 21H

    LUserChoiceAddOn:
        MOV AH,01H
        INT 21H
        MOV DI_addOnChoice,AL

        MOV AH,09H
        LEA DX, NL
        INT 21H

        CMP DI_addOnChoice,'y'
        JE LAddOn

        CMP DI_addOnChoice,'n'
	    JE LNextAddOn
	    MOV AH,09H
        LEA DX, DI_invAddOnMsg
        INT 21H
	    JMP LTicAddOn
        LAddOn:
            MOV BH,0
            MOV BL,DI_addOnList[SI]
            ADD BX,DI_currentAddOn;DW
            MOV DI_currentAddOn,BX
            
	    LNextAddOn:
		    INC SI
            JMP LTicAddOn

        FinAddOn:

        MOV AX ,DI_currentAddOn;AH=00,AL=39
        MOV AH,0
        MUL hun;AX = 3900
        ADD AX,currentTicPrice;AX = 5280+3900
        MOV currentTicPrice , AX
        DIV hun;div 100 , AH = 80 AL=91
        MOV flnum ,AH;flnum=80
        MOV dcnum ,AL ;dcnum=91

        MOV AH,09H
        LEA DX, DI_PriceAfterAddOnMsg
        INT 21H

        MOV AH,0
        MOV AL,dcnum
        DIV ten
        MOV BX,AX

        MOV AH,02H
        MOV DL,BL
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,BH
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,fDot
        INT 21H
        MOV AH,0

        MOV AL,flnum
        DIV ten
        MOV BX,AX

        MOV AH,02H
        MOV DL,BL
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,BH
        ADD DL,30H
        INT 21H

        MOV AH,09H
        LEA DX, NL
        INT 21H

        JMP PAYMENTMODULE


;Payment Module
PAYMENTMODULE:
CALL CLEARSCREEN
        MOV AH,09H              ;PAYMENT SCREEN
    	LEA DX,D_PAYMENT
    	INT 21H 

        MOV AH,09H
    	LEA DX,D_LINE
    	INT 21H

        MOV AH,09H              ;TOTAL AMOUNT
    	LEA DX,D_PAYAMOUNT
    	INT 21H 
      
	    MOV AX,currentTicPrice   ;TOTAL AMOUNT
	    DIV hun;deno 100 , AH = 40 AL=18
        MOV flnum ,AH;flnum=40
        MOV dcnum ,AL ;dcnum=18

        MOV AH,0
        MOV AL,dcnum
        DIV ten
        MOV BX,AX

        MOV AH,02H
        MOV DL,BL
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,BH
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,fDot
        INT 21H


        MOV AH,0
        MOV AL , flnum
        DIV TEN
        MOV BX,AX

        MOV AH,02H
        MOV DL,BL
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,BH
        ADD DL,30H
        INT 21H

        MOV AH,09H
        LEA DX, NL
        INT 21H
    IFWRONGPAYMENTMETHOD:
        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        MOV AH,09H              ;CHOOSE PAYMENTMETOD1 
    	LEA DX,D_PAYMENTMETHOD1
    	INT 21H 

        MOV AH,09H              ;CHOOSE PAYMENTMETHOD2
    	LEA DX,D_PAYMENTMETHOD2
    	INT 21H 

        MOV AH,09H              ;ENTER CHOICE 
    	LEA DX,D_CHOICE
    	INT 21H 

        MOV AH,01H              ;CHOICE 
    	INT 21H
        SUB AL,30H
    	MOV I_CHOICE,AL

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        CMP I_CHOICE,1
        JE FIRSTCHOICE

        CMP I_CHOICE,2
        JE FIRSTCHOICE

        JMP IFWRONGPAYMENTMETHOD
    FIRSTCHOICE:
        MOV AH,09H              ;USERNAME
    	LEA DX,D_METHOD1USERNAME
    	INT 21H

        MOV AH,0AH              ;INPUT USER STRING
	    LEA DX,IP_USERNAME
	    INT 21H

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        MOV AH,09H              ;PASSWORD
    	LEA DX,D_METHOD1PASSWORD
    	INT 21H

        MOV AH,0AH              ;INPUT USER STRING
	    LEA DX,IP_PASSWORD
	    INT 21H

        MOV AH,09H              ;NEWLINE
	    LEA DX,NL
	    INT 21H

        CMP P_ACTNUM2,6
        JNE FIRSTCHOICE
        MOV CH,0
        MOV CL,P_ACTNUM2
        MOV SI,0
    CHECKPUSERNAME:
        MOV AL,ACC2[SI]
        CMP INPUTPUSERNAME[SI],AL
        JNE FIRSTCHOICE
        INC SI
    LOOP CHECKPUSERNAME

        CMP P_ACTNUM3,9
        JNE FIRSTCHOICE
        MOV CH,0
        MOV CL,P_ACTNUM3
        MOV SI,0
    CHECKPPASSWORD:
        MOV AL,ACC2_PASSWORD[SI]
        CMP INPUTPPASSWORD[SI],AL
        JNE FIRSTCHOICE
        INC SI
    LOOP CHECKPPASSWORD

    MOV BX,currentTicPrice
    MOV P_AmountNeedToPay,BX
    LUserEnterPayment:
    MOV AH,09H
    LEA DX, P_PaymentSection
    INT 21H

    MOV AH,09H
    LEA DX, P_Enter2DigitPaymentStr
    INT 21H

    MOV AH,0AH
    LEA DX,P_UserPaySTR
    INT 21H
    
    MOV AH,09H
    LEA DX,NL
    INT 21H

    MOV SI,0
    MOV CH,0
    MOV CL,P_UserPayACTN
    LCheckDigit:
        CMP P_UserPayINPUTSTR[SI],48
	    JB LInvDIgit
	    CMP P_UserPayINPUTSTR[SI],57
	    JA LInvDIgit
		INC SI
	LOOP LCheckDigit
    JMP LValidDigit
    LInvDIgit:
        MOV AH,09H
        LEA DX, P_InvPaymentMsg
        INT 21H
        JMP LUserEnterPayment
    LValidDigit:
        MOV SI,0
        MOV AH,0
        MOV AL,P_UserPayINPUTSTR[SI]
        SUB AX,30H
        MUL ten
        ADD P_CurrentPayAmount,AX
        INC SI
        MOV BH,0
        MOV BL,P_UserPayINPUTSTR[SI]
        SUB BX,30H
        ADD P_CurrentPayAmount,BX

        MOV AH,09H
        LEA DX, P_UserPayMsg
        INT 21H

        MOV AX, P_CurrentPayAmount;AL=90
        MUL hun;AX = 9000 ;Use this for addition an subtract
        MOV P_CurrentPayAmount,AX

        DIV hun;div 100 , AH = 00 AL=90
        MOV flnum ,AH ;flnum=00
        MOV dcnum ,AL ;dcnum=90

    ;Display USer pay amount
        MOV AH,0
        MOV AL,dcnum
        DIV ten
        MOV BX,AX

        MOV AH,02H
        MOV DL,BL
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,BH
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,fDot
        INT 21H

        MOV AH,0
        MOV AL , flnum
        DIV TEN
        MOV BX,AX

        MOV AH,02H
        MOV DL,BL
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,BH
        ADD DL,30H
        INT 21H

        MOV AH,09H
        LEA DX, NL
        INT 21H

    ;Calculate Balance
        MOV AX,P_AmountNeedToPay;AX=6600
        CMP P_CurrentPayAmount,AX
        JB LNoEnoughPayment;IF Current < Need
        JMP LEnoughPayment
        LNoEnoughPayment:
            MOV AH,09H
            LEA DX, P_NoEnoughMsg
            INT 21H

            MOV AX,P_AmountNeedToPay
            SUB AX,P_CurrentPayAmount
            MOV P_AmountNeedToPay , AX
            DIV hun;div 100 , AH = 00 AL=90
            MOV flnum ,AH ;flnum=00
            MOV dcnum ,AL ;dcnum=90

        ;Display Amount Need to Pay
            MOV AH,0
            MOV AL,dcnum
            DIV ten
            MOV BX,AX
            MOV AH,02H
            MOV DL,BL
            ADD DL,30H
            INT 21H
            MOV AH,02H
            MOV DL,BH
            ADD DL,30H
            INT 21H

            MOV AH,02H
            MOV DL,fDot
            INT 21H

            MOV AH,0
            MOV AL , flnum
            DIV TEN
            MOV BX,AX

            MOV AH,02H
            MOV DL,BL
            ADD DL,30H
            INT 21H

            MOV AH,02H
            MOV DL,BH
            ADD DL,30H
            INT 21H

            MOV AH,09H
            LEA DX, NL
            INT 21H

    ;DoReset
            MOV BX,0
            MOV P_CurrentPayAmount,BX
            JMP LUserEnterPayment

    ;While Payment Enough
        LEnoughPayment:
            MOV AH,09H
            LEA DX, P_EnoughMsg
            INT 21H

            MOV AX,P_CurrentPayAmount
            SUB AX,P_AmountNeedToPay
            DIV hun;div 100 , AH = 00 AL=90
            MOV flnum ,AH ;flnum=00
            MOV dcnum ,AL ;dcnum=90

            MOV AH,0
            MOV AL,dcnum
            DIV ten
            MOV BX,AX
            MOV AH,02H
            MOV DL,BL
            ADD DL,30H
            INT 21H
            MOV AH,02H
            MOV DL,BH
            ADD DL,30H
            INT 21H

            MOV AH,02H
            MOV DL,fDot
            INT 21H

            MOV AH,0
            MOV AL , flnum
            DIV TEN
            MOV BX,AX

            MOV AH,02H
            MOV DL,BL
            ADD DL,30H
            INT 21H

            MOV AH,02H
            MOV DL,BH
            ADD DL,30H
            INT 21H

            MOV AH,09H
            LEA DX, NL
            INT 21H

        ;Resetting
            MOV BX,0
            MOV P_CurrentPayAmount,BX
            MOV P_AmountNeedToPay,BX

    FinPayment:
        JMP ReceiptModule

;Receipt Module 
    ReceiptModule:
    CALL CLEARSCREEN
        MOV AH,09H
        LEA DX, R_ReceiptR
        INT 21H

        MOV AH,09H
        LEA DX, R_LINE
        INT 21H

        MOV AH,09H
        LEA DX, R_Name
        INT 21H

        MOV AH,09H
        LEA DX, UserNameINPUTSTR
        INT 21H

        MOV AH,09H
        LEA DX, NL
        INT 21H

        MOV AH,09H
        LEA DX, R_Date
        INT 21H

        MOV AH,09H
        LEA DX, DateINPUTSTR
        INT 21H

        MOV AH,09H
        LEA DX, NL
        INT 21H

        MOV AH,09H
        LEA DX, R_Dep
        INT 21H

        MOV AH,09H
        LEA DX, Departure
        INT 21H

        MOV AH,09H
        LEA DX, R_Des
        INT 21H

        MOV AH,09H
        LEA DX, Destination
        INT 21H

        MOV AH,09H
        LEA DX, NL
        INT 21H

        MOV AH,09H
        LEA DX, R_TicPrice
        INT 21H

        MOV AX , currentTicPrice
        DIV hun;div 100 , AH = 80 AL=91
        MOV flnum ,AH;flnum=80
        MOV dcnum ,AL ;dcnum=91

        MOV AH,0
        MOV AL,dcnum
        DIV ten
        MOV BX,AX

        MOV AH,02H
        MOV DL,BL
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,BH
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,fDot
        INT 21H
        MOV AH,0

        MOV AL,flnum
        DIV ten
        MOV BX,AX

        MOV AH,02H
        MOV DL,BL
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,BH
        ADD DL,30H
        INT 21H

        MOV AH,09H
        LEA DX, NL
        INT 21H

        MOV AH,09H
        LEA DX, R_LINE
        INT 21H

        ;Resetting
        MOV DI_currentAddOn,0
        MOV PlaceIndex,1
        ;Record Ticket price
        MOV SI,M_PurchaseTime;DW 0
        MOV BH,flnum ;AX=8960
        MOV S_FLNum[SI],BH
        MOV BL,dcnum
        MOV S_DCNum[SI],BL
        INC M_PurchaseTime;Inc DW 1
        ;Record Date

        MOV AH,09H
        LEA DX, NL
        INT 21H

        MOV DI,S_ReadDate
        MOV SI,0
        MOV CX,11
        LCpyDate:
            MOV BL,DateINPUTSTR[SI]
            MOV S_DateList[DI],BL
            INC SI
            INC DI
        LOOP LcpyDate
        DEC DI
        MOV S_DateList[DI],'$'
        ;Resetting for next read
        MOV BX,S_WriteSize
        ADD S_ReadDate,BX

        MOV AH,09H
        LEA DX, NL
        INT 21H

    WRONGCHOICE:
        MOV AH,09H
        LEA DX, NL
        INT 21H

        MOV AH,09H
        LEA DX, D_BACKTOMENU
        INT 21H

        MOV AH,01H              ;YES OR NO
        INT 21H
        MOV YN,AL

        MOV AH,09H
        LEA DX, NL
        INT 21H

        CMP YN,"y"
        JE JMPTOMAINMENU
        CMP YN,"n"
        JE JMPTOEXIT
        JMP WRONGCHOICE

        JMPTOMAINMENU:
            JMP MAINMENU
        JMPTOEXIT:
            JMP EXIT


SUMMARYMODULE:
CALL CLEARSCREEN
    MOV BX,0
    MOV S_CurrentDate,BX

    MOV AH,09H
    LEA DX, S_ReportTitle
    INT 21H

    MOV AH,09H
    LEA DX, S_DispenseTitle
    INT 21H

    MOV AH,09H
    LEA DX, NL
    INT 21H

    MOV BL,1
    MOV S_Index,BL

    MOV DI,0
    LPrintSummaryRecord:
        CMP DI,4
        JA LGoToFooter
        JMP LContinue
        LGoToFooter:
            JMP LReportFooter
        LContinue:
        MOV AH,09H
        LEA DX, NL
        INT 21H
        
        MOV AH,02H
        MOV DL, S_Index
        ADD DL,30H
        INT 21H

        INC S_Index

        MOV AH,09H
        LEA DX, S_Bracket
        INT 21H

        MOV AH,0
        MOV AL,S_DCNum[DI]
        DIV ten
        MOV BX,AX

        MOV AH,02H
        MOV DL,BL
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,BH
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,fDot
        INT 21H

        MOV AH,0
        MOV AL,S_FLNum[DI]
        DIV ten
        MOV BX,AX

        MOV AH,02H
        MOV DL,BL
        ADD DL,30H
        INT 21H

        MOV AH,02H
        MOV DL,BH
        ADD DL,30H
        INT 21H

        MOV AH,09H
        LEA DX, NL
        INT 21H

        MOV AH,09H
        LEA DX, S_PurchaseDateMsg
        INT 21H

        MOV SI, S_CurrentDate
        MOV AH,09H
        LEA DX, S_DateList[SI]
        INT 21H

        INC DI
        MOV BX,S_DateSize
        ADD S_CurrentDate,BX

        MOV AH,09H
        LEA DX, NL
        INT 21H
    JMP LPrintSummaryRecord
    LReportFooter:
        MOV AH,09H
        LEA DX, S_DispenseFooter
        INT 21H

        JMP WRONGCHOICE
EXIT:

        MOV AX,4C00H
        INT 21H
MAIN ENDP
END MAIN
