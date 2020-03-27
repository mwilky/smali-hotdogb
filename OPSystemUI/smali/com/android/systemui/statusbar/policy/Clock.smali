.class public Lcom/android/systemui/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Clock"


# instance fields
.field private mAmPmCustomFont:Landroid/graphics/Typeface; 

.field private mAmPmFloat:F 

.field private mAmPmTint:I 

.field private mClockAmPmStyle:I 

.field private mDateCustomFont:Landroid/graphics/Typeface; 

.field private mDateFloat:F 

.field private mDateFormat:I 

.field private mDateDividerStyle:Ljava/lang/String; 

.field private mDateTint:I 

.field private mDayCustomFont:Landroid/graphics/Typeface; 

.field private mDayFloat:F 

.field private mDayTint:I 

.field private mDateLayout:I 

.field private mFriday:Ljava/lang/String;

.field private mFridayL:Ljava/lang/String; 

.field private mHourCustomFont:Landroid/graphics/Typeface; 

.field private mHourFloat:F 

.field private mHourSeparatorFloat:F 

.field private mHourTint:I 

.field private final mList:[Ljava/lang/String; 

.field private mSecTint:I 

.field private mMinTint:I 

.field private mMonday:Ljava/lang/String; 

.field private mMondayL:Ljava/lang/String; 

.field private mSaturday:Ljava/lang/String; 

.field private mSaturdayL:Ljava/lang/String; 

.field private mSeparatorTint:I 

.field private mShowDate:Z

.field private mShowDay:Z 

.field private mSunday:Ljava/lang/String; 

.field private mSundayL:Ljava/lang/String; 

.field private mThursday:Ljava/lang/String; 

.field private mThursdayL:Ljava/lang/String; 

.field private mTuesday:Ljava/lang/String; 

.field private mTuesdayL:Ljava/lang/String; 

.field private mWednesday:Ljava/lang/String; 

.field private mWednesdayL:Ljava/lang/String; 

.field private mDayStyle:I

.field private mYearStyle:I

.field private mClockDateFormat:Ljava/lang/String;

.field private mDarkIconColor:I

.field private mClockColor:I

.field private final mAmPmStyle:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mClockVisibleByPolicy:Z

.field private mClockVisibleByUser:Z

.field private mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

.field private mCurrentUserId:I

.field private final mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private mDemoMode:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;

.field private mNonAdaptedColor:I

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private final mSecondTick:Ljava/lang/Runnable;

.field private mSecondsHandler:Landroid/os/Handler;

.field private final mShowDark:Z

.field private mShowSeconds:Z

.field private mUseWallpaperTextColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z
    
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$2;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$3;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/systemui/statusbar/policy/Clock$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/Clock$4;-><init>(Lcom/android/systemui/statusbar/policy/Clock;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/R$styleable;->Clock:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    :try_start_0
    sget v0, Lcom/android/systemui/R$styleable;->Clock_amPmStyle:I

    const/4 v1, 0x2

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    sget v0, Lcom/android/systemui/R$styleable;->Clock_showDark:I

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lcom/android/systemui/statusbar/policy/Clock$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui/statusbar/policy/Clock;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;
    
    const-string v0, "long_sunday" 

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSundayL:Ljava/lang/String;

    const-string v0, "long_monday" 

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mMondayL:Ljava/lang/String;

    const-string v0, "long_tuesday" 

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTuesdayL:Ljava/lang/String;

    const-string v0, "long_wednesday"

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mWednesdayL:Ljava/lang/String;

    const-string v0, "long_thursday" 

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mThursdayL:Ljava/lang/String;

    const-string v0, "long_friday" 

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mFridayL:Ljava/lang/String;

    const-string v0, "long_saturday" 

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSaturdayL:Ljava/lang/String;

    const-string v0, "short_sunday" 

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSunday:Ljava/lang/String;

    const-string v0, "short_monday"

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mMonday:Ljava/lang/String;

    const-string v0, "short_tuesday" 

   const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTuesday:Ljava/lang/String;

    const-string v0, "short_wednesday" 

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mWednesday:Ljava/lang/String;

    const-string v0, "short_thursday" 

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mThursday:Ljava/lang/String;

    const-string v0, "short_friday" 

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mFriday:Ljava/lang/String;

    const-string v0, "short_saturday"

    const-string v1, "string"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    
    move-result v1
    
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;
    
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    
    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSaturday:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/Clock;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/Clock;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/policy/Clock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/Clock;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/Clock;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    return-object p0
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 9

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->showSeconds()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_Hms:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_hms:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0xef01

    const v3, 0xef00

    const/4 v4, 0x1

    if-nez v1, :cond_8

    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    move v5, v1

    move v6, v5

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_5

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x27

    if-ne v7, v8, :cond_3

    xor-int/lit8 v6, v6, 0x1

    :cond_3
    if-nez v6, :cond_4

    const/16 v8, 0x61

    if-ne v7, v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, -0x1

    :goto_2
    if-ltz v5, :cond_7

    move v6, v5

    :goto_3
    if-lez v6, :cond_6

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v7

    if-eqz v7, :cond_6

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "a"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_7
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    if-eqz v1, :cond_b

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v1, :cond_b

    if-le v2, v1, :cond_b

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmStyle:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_9

    add-int/2addr v2, v4

    invoke-virtual {v3, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    :cond_9
    if-ne p0, v4, :cond_a

    new-instance p0, Landroid/text/style/RelativeSizeSpan;

    const v0, 0x3f333333    # 0.7f

    invoke-direct {p0, v0}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v0, 0x22

    invoke-virtual {v3, p0, v1, v2, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    add-int/lit8 p0, v2, 0x1

    invoke-virtual {v3, v2, p0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p0, v1, 0x1

    invoke-virtual {v3, v1, p0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :goto_5
    return-object v3

    :cond_b
    return-object v0
.end method

.method private releaseReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    :cond_0
    return-void
.end method

.method private shouldBeVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private showSeconds()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintController;->isHighLightHintShow()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateClockVisibility()V
    .locals 1
    
    sget v0, Lcom/android/mwilky/Renovate;->mClockPosition:I
    
    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private updateShowSeconds()V
    .locals 6
    
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->printCustomClock()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->showSeconds()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecondTick:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long/2addr v2, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->releaseReceiver()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public disable(IIIZ)V
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/Display;->getDisplayId()I

    move-result p3

    if-eq p1, p3, :cond_0

    return-void

    :cond_0
    const/high16 p1, 0x800000

    and-int/2addr p1, p2

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    if-eq p1, p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibilityByPolicy(Z)V

    :cond_2
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-nez v0, :cond_0

    const-string v0, "enter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "exit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    goto/16 :goto_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v0, :cond_5

    const-string v0, "clock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "millis"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "hhmm"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    const/4 p1, 0x2

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    invoke-static {p2, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v1, 0xa

    invoke-virtual {p2, v1, v0}, Ljava/util/Calendar;->set(II)V

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v0, 0xc

    invoke-virtual {p2, v0, p1}, Ljava/util/Calendar;->set(II)V

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    sget-object v0, Lcom/android/systemui/Dependency;->TIME_TICK_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const-string v1, "clock_seconds"

    const-string v2, "icon_blacklist"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClock()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateShowSeconds()V
    
    const/4 v0, 0x0
    
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->updateViews(F)V

    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 2
    
    float-to-int v0, p2

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDarkIconColor:I #dark color

    if-nez v0, :cond_0 #set to grey if dark intensity is 1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I #custom color

    :cond_0    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDayTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHourTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mMinTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSeparatorTint:I
    
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->printCustomClock()V

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 3

    sget v0, Lcom/android/systemui/R$dimen;->status_bar_clock_size:I

    invoke-static {p0, v0}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_clock_starting_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_clock_end_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/systemui/statusbar/policy/Clock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterReceiver, tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAttached:Z

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDark:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->removeDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    :cond_1
    const-class v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/HighlightHintController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->releaseReceiver()V

    return-void
.end method

.method public onHighlightHintStateChange()V
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/policy/Clock;->TAG:Ljava/lang/String;

    const-string v1, "onHighlightHintStateChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateShowSeconds()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_3

    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "clock_super_parcelable"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "current_user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    :cond_1
    const/4 v0, 0x1

    const-string/jumbo v1, "visible_by_policy"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    const-string/jumbo v1, "visible_by_user"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    const/4 v0, 0x0

    const-string v1, "show_seconds"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    const-string v0, "visibility"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-super {p0}, Landroid/widget/TextView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "clock_super_parcelable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCurrentUserId:I

    const-string v2, "current_user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    const-string/jumbo v2, "visible_by_policy"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    const-string/jumbo v2, "visible_by_user"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    const-string v2, "show_seconds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result p0

    const-string/jumbo v1, "visibility"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "clock_seconds"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p2, p1}, Lcom/android/systemui/tuner/TunerService;->parseIntegerSwitch(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateShowSeconds()V

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    const-string p2, "clock"

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/Clock;->setClockVisibleByUser(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    :goto_0
    return-void
.end method

.method public setClockVisibilityByPolicy(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByPolicy:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    return-void
.end method

.method public setClockVisibleByUser(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockVisibleByUser:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->updateClockVisibility()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->shouldBeVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method final updateClock()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/policy/Clock;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClock is in demo mode, tag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->printCustomClock()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mContentDescriptionFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public useWallpaperTextColor(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mUseWallpaperTextColor:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mUseWallpaperTextColor:Z

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mUseWallpaperTextColor:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$attr;->wallpaperTextColor:I

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mNonAdaptedColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method public updateViews(F)V
    .locals 2
    
    float-to-int v0, p1
    
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->readRenovateMods()V
    
    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDarkIconColor:I #dark color

    if-nez v0, :cond_dark #set to grey if dark intensity is 1

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I #custom color

    :cond_dark    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDayTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHourTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mMinTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSeparatorTint:I
    
    iput v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateTint:I

    return-void
.end method

.method public readRenovateMods()V
    .locals 2
    
    sget v0, Lcom/android/mwilky/Renovate;->mClockColorOP:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockColor:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmTint:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateTint:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDayTint:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHourTint:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSecTint:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mMinTint:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSeparatorTint:I
	
    sget v0, Lcom/android/mwilky/Renovate;->mDarkIconColor:I
	
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDarkIconColor:I
    
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mShowStatusbarDate:Z
    
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDate:Z
    
    sget-boolean v0, Lcom/android/mwilky/Renovate;->mShowStatusbarDay:Z
    
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDay:Z
    
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarDayStyle:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDayStyle:I
    
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarYearStyle:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mYearStyle:I
    
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarDateLayout:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateLayout:I
    
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarDateFormat:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateFormat:I
    
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarClockAmPmStyle:I
    
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockAmPmStyle:I
    
    sget-object v0, Lcom/android/mwilky/Renovate;->mStatusbarDateDividerStyle:Ljava/lang/String;
    
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateDividerStyle:Ljava/lang/String;
    
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarDaySize:I
    
    const/4 v1, 0x1
    
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->sizeSetter(II)V
    
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarHourSize:I
    
    const/4 v1, 0x2
    
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->sizeSetter(II)V
    
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarDateSize:I
    
    const/4 v1, 0x3
    
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->sizeSetter(II)V
    
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarClockDividerSize:I
    
    const/4 v1, 0x4
    
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/Clock;->sizeSetter(II)V
    
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarClockHourFont:I

    invoke-static {v0}, Lcom/android/mwilky/Renovate;->getFontStyle(I)Landroid/graphics/Typeface;

    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHourCustomFont:Landroid/graphics/Typeface;
    
    sget v0, Lcom/android/mwilky/Renovate;->mStatusbarDateFont:I

    invoke-static {v0}, Lcom/android/mwilky/Renovate;->getFontStyle(I)Landroid/graphics/Typeface;

    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateCustomFont:Landroid/graphics/Typeface;
    
     sget v0, Lcom/android/mwilky/Renovate;->mStatusbarDayFont:I

    invoke-static {v0}, Lcom/android/mwilky/Renovate;->getFontStyle(I)Landroid/graphics/Typeface;

    move-result-object v0 

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDayCustomFont:Landroid/graphics/Typeface;
	
    return-void
.end method

.method private addDate()V 
    .locals 15

    const/16 v14, 0xa 

    const/4 v13, 0x2 

    const/16 v12, 0x21 

    const/4 v11, 0x0 

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/4 v9, 0x5 

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2 

    if-ge v2, v14, :cond_1 

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0" 

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0 

    :goto_0 
    invoke-virtual {v4, v13}, Ljava/util/Calendar;->get(I)I

    move-result v9 

    add-int/lit8 v6, v9, 0x1 

    if-ge v6, v14 ,:cond_2 

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0" 

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5 

    :goto_1 
    const/4 v9, 0x1 

    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9 

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8 

    iget v9, p0, Lcom/android/systemui/statusbar/policy/Clock;->mYearStyle:I

    if-nez v9,:cond_0 

    const/4 v9, 0x4 

    invoke-static {v8, v13 , v9},Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v8 

    :cond_0 
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateDividerStyle:Ljava/lang/String;

    iget v9, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateFormat:I

    packed-switch v9,:pswitch_data_0 

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1 

    :goto_2 
    new-instance v3,Landroid/text/SpannableString;

    invoke-direct {v3, v1},Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v9,Landroid/text/style/ForegroundColorSpan;

    iget v10, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateTint:I

    invoke-direct {v9, v10},Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v3},Landroid/text/Spannable;->length()I 

    move-result v10 

    invoke-interface {v3, v9, v11, v10, v12},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v9,Landroid/text/style/RelativeSizeSpan;

    iget v10, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateFloat:F 

    invoke-direct {v9, v10},Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v3},Landroid/text/Spannable;->length()I 

    move-result v10

    invoke-interface {v3, v9, v11, v10, v12},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V 

    new-instance v9, Lcom/android/mwilky/CustomTypefaceSpan;

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateCustomFont:Landroid/graphics/Typeface;

    invoke-direct {v9, v10}, Lcom/android/mwilky/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {v3},Landroid/text/Spannable;->length()I 

    move-result v10 

    invoke-interface {v3, v9, v11, v10, v12},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/Clock;->append(Ljava/lang/CharSequence;)V

    return-void 

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0 

    goto/16:goto_0 

    :cond_2 
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5 

    goto :goto_1 

    :pswitch_0 
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V 

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1 

    goto :goto_2 

    :pswitch_1 
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1 

    goto :goto_2 

    :pswitch_2 
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9 

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1 

    goto/16 :goto_2 

    :pswitch_data_0 
    .packed-switch 0x1 
        :pswitch_0 
        :pswitch_1 
        :pswitch_2 
    .end packed-switch 
.end method 

.method private addDay()V 
    .locals 9 

    const/16 v8, 0x21 

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/4 v5, 0x7 

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1 

    const-string v0, "" 

    const-string v3, "string" 

    iget v5, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDayStyle:I

    if-eqz v5, :cond_0 

    packed-switch v1, :pswitch_data_0 

    :goto_0 
    new-instance v4,Landroid/text/SpannableString;

    invoke-direct {v4, v0},Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDayTint:I

    invoke-direct {v5, v6} ,Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v4} ,Landroid/text/Spannable;->length()I

    move-result v6 

    invoke-interface {v4, v5, v7, v6, v8},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    iget v6, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDayFloat:F 

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v4}, Landroid/text/Spannable;->length()I 

    move-result v6

    invoke-interface {v4, v5, v7, v6, v8},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Lcom/android/mwilky/CustomTypefaceSpan;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDayCustomFont:Landroid/graphics/Typeface;

    invoke-direct {v5, v6}, Lcom/android/mwilky/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {v4},Landroid/text/Spannable;->length()I

    move-result v6 

    invoke-interface {v4, v5, v7, v6, v8},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/Clock;->append(Ljava/lang/CharSequence;)V

    return-void 

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSundayL:Ljava/lang/String;

    goto :goto_0 

    :pswitch_1 
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mMondayL:Ljava/lang/String;

    goto :goto_0 

    :pswitch_2 
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTuesdayL:Ljava/lang/String;

    goto :goto_0 

    :pswitch_3 
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mWednesdayL:Ljava/lang/String;

    goto :goto_0 

    :pswitch_4 
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mThursdayL:Ljava/lang/String;

    goto :goto_0 

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mFridayL:Ljava/lang/String;

    goto :goto_0 

    :pswitch_6 
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSaturdayL:Ljava/lang/String;

    goto :goto_0 

    :cond_0 
    packed-switch v1, :pswitch_data_1 

    goto :goto_0 

    :pswitch_7 
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSunday:Ljava/lang/String;

    goto :goto_0 

    :pswitch_8 
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mMonday:Ljava/lang/String;

    goto :goto_0 

    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mTuesday:Ljava/lang/String;

    goto :goto_0 

    :pswitch_a 
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mWednesday:Ljava/lang/String;

    goto :goto_0 

    :pswitch_b 
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mThursday:Ljava/lang/String;

    goto :goto_0 

    :pswitch_c 
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mFriday:Ljava/lang/String;

    goto :goto_0 

    :pswitch_d 
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSaturday:Ljava/lang/String;

    goto :goto_0 

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0 
        :pswitch_1 
        :pswitch_2 
        :pswitch_3 
        :pswitch_4 
        :pswitch_5 
        :pswitch_6 
    .end packed-switch 

    :pswitch_data_1 
    .packed-switch 0x1
        :pswitch_7 
        :pswitch_8 
        :pswitch_9 
        :pswitch_a 
        :pswitch_b 
        :pswitch_c 
        :pswitch_d 
    .end packed-switch 
.end method 

.method private addHour()V
    .locals 22 

    move-object/from16 v0, p0 

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    iget-object v1, v0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3 

    if-eqz v3,:cond_5 

    const/16 v4, 0xb 

    move/from16 v0, v4 

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6 

    const/16 v4, 0xa 

    move/from16 v0, v4

    if-ge v6, v0, :cond_4 

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct/range{v4 .. v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual/range{v4 .. v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range{v4 .. v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7 

    :cond_0 
    :goto_0 
    new-instance v8,Landroid/text/SpannableString;

    invoke-direct {v8, v7},Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V 

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mHourTint:I 

    move/from16 v5, v0 

    invoke-direct/range {v4 .. v5},Landroid/text/style/ForegroundColorSpan;-><init>(I)V 

    const/16 v5, 0x0 

    invoke-interface {v8},Landroid/text/Spannable;->length()I 

    move-result v9 

    const/16 v10, 0x21 

    move-object/from16 v0, v4 

    move/from16 v1, v5 

    move/from16 v2, v9 

    move/from16 v3, v10 

    invoke-interface {v8, v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mHourFloat:F 

    move/from16 v5, v0 

    invoke-direct/range{v4 .. v5},Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v5, 0x0 

    invoke-interface {v8},Landroid/text/Spannable;->length()I

    move-result v9 

    const/16 v10, 0x21 

    move-object/from16 v0, v4

    move/from16 v1, v5 

    move/from16 v2, v9 

    move/from16 v3, v10 

    invoke-interface {v8, v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Lcom/android/mwilky/CustomTypefaceSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mHourCustomFont:Landroid/graphics/Typeface;

    move-object/from16 v5, v0 

    invoke-direct/range{v4 .. v5}, Lcom/android/mwilky/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v5, 0x0 

    invoke-interface {v8},Landroid/text/Spannable;->length()I

    move-result v9 

    const/16 v10, 0x21 

    move-object/from16 v0, v4

    move/from16 v1, v5 

    move/from16 v2, v9 

    move/from16 v3, v10 

    invoke-interface {v8, v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/policy/Clock;->append(Ljava/lang/CharSequence;)V

    invoke-direct/range{p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->addSeparator()V

    const/16 v0, 0xc 

    move-object/from16 v4, p0
    
    iget-object v2, v4, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v12 

    const/16 v4, 0xa 

    move/from16 v0, v4

    if-ge v12, v0,:cond_6 

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct/range{v4 .. v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0" 

    invoke-virtual/range{v4 .. v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4 

    move-object/from16 v0, v4 

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4 

    invoke-virtual/range{v4 .. v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11 

    :goto_1 
    new-instance v13,Landroid/text/SpannableString;

    invoke-direct {v13, v11},Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4,Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0 

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mMinTint:I 

    move/from16 v5, v0

    invoke-direct/range{v4 .. v5},Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x0 

    invoke-interface {v13},Landroid/text/Spannable;->length()I

    move-result v9 

    const/16 v10, 0x21 

    move-object/from16 v0, v4 

    move/from16 v1, v5 

    move/from16 v2, v9 

    move/from16 v3, v10 

    invoke-interface {v13, v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v4 ,Landroid/text/style/RelativeSizeSpan;

    move-object/from16 v0, p0 

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mHourFloat:F 

    move/from16 v5, v0

    invoke-direct/range{v4 .. v5},Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v5, 0x0 

    invoke-interface {v13},Landroid/text/Spannable;->length()I 

    move-result v9 

    const/16 v10, 0x21 

    move-object/from16 v0, v4 

    move/from16 v1, v5 

    move/from16 v2, v9 

    move/from16 v3, v10 

    invoke-interface {v13, v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V 

    new-instance v4, Lcom/android/mwilky/CustomTypefaceSpan;

    move-object/from16 v0, p0 

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mHourCustomFont:Landroid/graphics/Typeface;

    move-object/from16 v5, v0

    invoke-direct/range{v4 .. v5}, Lcom/android/mwilky/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v5, 0x0 

    invoke-interface {v13},Landroid/text/Spannable;->length()I

    move-result v9 

    const/16 v10, 0x21 

    move-object/from16 v0, v4 

    move/from16 v1, v5 

    move/from16 v2, v9 

    move/from16 v3, v10 

    invoke-interface {v13 , v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0 

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/policy/Clock;->append(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mShowSeconds:Z

    move/from16 v4, v0

    if-eqz v4, :cond_1 

    invoke-direct/range{p0 .. p0}, Lcom/android/systemui/statusbar/policy/Clock;->addSeparator()V

    const/16 v0, 0xd 

    move-object/from16 v4, p0
    
    iget-object v2, v4, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6 

    const/16 v4, 0xa 

    move/from16 v0, v6 

    move/from16 v1, v4 

    if-ge v0, v1, :cond_7 

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct/range{v4 .. v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual/range{v4 .. v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4 

    move-object/from16 v0, v4 

    move/from16 v1, v6 

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4 

    invoke-virtual/range{v4 .. v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14 

    :goto_2 
    new-instance v15,Landroid/text/SpannableString;

    invoke-direct {v15, v14},Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4 ,Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mSecTint:I

    move/from16 v5, v0 

    invoke-direct/range{v4 .. v5},Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x0 

    invoke-interface {v15},Landroid/text/Spannable;->length()I 

    move-result v9 

    const/16 v10, 0x21 

    move-object/from16 v0, v4 

    move/from16 v1, v5 

    move/from16 v2, v9 

    move/from16 v3, v10 

    invoke-interface {v15, v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v4,Landroid/text/style/RelativeSizeSpan;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mHourFloat:F

    move/from16 v5, v0 

    invoke-direct/range {v4 .. v5},Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v5, 0x0 

    invoke-interface {v15},Landroid/text/Spannable;->length()I

    move-result v9 

    const/16 v10, 0x21

    move-object/from16 v0, v4 

    move/from16 v1, v5 

    move/from16 v2, v9 

    move/from16 v3, v10 

    invoke-interface {v15, v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Lcom/android/mwilky/CustomTypefaceSpan;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mHourCustomFont:Landroid/graphics/Typeface;

    move-object/from16 v5, v0 

    invoke-direct/range {v4 .. v5}, Lcom/android/mwilky/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v5, 0x0 

    invoke-interface {v15},Landroid/text/Spannable;->length()I

    move-result v9 

    const/16 v10, 0x21

    move-object/from16 v0, v4 

    move/from16 v1, v5 

    move/from16 v2, v9 

    move/from16 v3, v10 

    invoke-interface {v15, v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/systemui/statusbar/policy/Clock;->append(Ljava/lang/CharSequence;)V

    :cond_1 
    if-nez v3, :cond_3 

    const-string v7, "" 

    const/16 v0, 0x9 

    move-object/from16 v4, p0
    
    iget-object v2, v4, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v5 

    packed-switch v5,:pswitch_data_0 

    :goto_3 
    move-object/from16 v0, p0 

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mClockAmPmStyle:I

    move/from16 v4, v0 

    if-eqz v4, :cond_2 

    invoke-virtual/range {v7 .. v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7 

    :cond_2
    new-instance v6 ,Landroid/text/SpannableString;

    move-object/from16 v0, v7 

    invoke-direct {v6, v0},Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, p0 

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmTint:I

    move/from16 v5, v0 

    invoke-direct {v6, v5},Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v5, 0x0 

    invoke-interface {v6},Landroid/text/Spannable;->length()I 

    move-result v9 

    const/16 v10, 0x21 

    move-object/from16 v0, v6 

    move/from16 v1, v5 

    move/from16 v2, v9

    move/from16 v3, v10 

    invoke-interface {v6, v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Landroid/text/style/RelativeSizeSpan;

    move-object/from16 v0, p0 

    iget v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmFloat:F 

    move/from16 v5, v0 

    invoke-direct/range{v4 .. v5},Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v5, 0x0 

    invoke-interface {v4},Landroid/text/Spannable;->length()I

    move-result v9 

    const/16 v10, 0x21 

    move-object/from16 v0, v4

    move/from16 v1, v5 

    move/from16 v2, v9 

    move/from16 v3, v10

    invoke-interface {v6, v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Lcom/android/mwilky/CustomTypefaceSpan;

    move-object/from16 v0, p0 

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmCustomFont:Landroid/graphics/Typeface;

    move-object/from16 v5, v0 

    invoke-direct/range{v4 .. v5}, Lcom/android/mwilky/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    const/16 v5, 0x0 

    invoke-interface {v6},Landroid/text/Spannable;->length()I

    move-result v9 

    const/16 v10, 0x21 

    move-object/from16 v0, v4

    move/from16 v1, v5 

    move/from16 v2, v9 

    move/from16 v3, v10

    invoke-interface {v6, v0, v1, v2, v3},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move-object/from16 v0, p0 

    invoke-virtual {v0, v6} , Lcom/android/systemui/statusbar/policy/Clock;->append(Ljava/lang/CharSequence;)V

    :cond_3 
    return-void 

    :cond_4 
    invoke-static {v6}, Ljava/lang/String;->valueOf(I )Ljava/lang/String;

    move-result-object v7 

    goto/16:goto_0 

    :cond_5 
    const/16 v0, 0xa 

    move-object/from16 v4, p0
    
    iget-object v2, v4, Lcom/android/systemui/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I 

    move-result v4

    invoke-static/range{v4 .. v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const-string v4, "0" 

    move-object/from16 v0, v4

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z 

    move-result v4

    if-eqz v4,:cond_0 

    const-string v7, "12" 

    goto/16 :goto_0 

    :cond_6 
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11 

    goto/16 :goto_1 

    :cond_7 
    invoke-static/range{v6 .. v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14 

    goto/16 :goto_2 

    :pswitch_0 
    const-string v7, "am" 

    goto/16 :goto_3 

    :pswitch_1 
    const-string v7, ""

    goto/16 :goto_3 

    nop 

    :pswitch_data_0 
    .packed-switch 0x0 
        :pswitch_0 
        :pswitch_1 
    .end packed-switch 
.end method 

.method private addSeparator()V 
    .locals 5 

    const/16 v4, 0x21 

    const/4 v3, 0x0 

    new-instance v0,Landroid/text/SpannableString;

    const-string v1, ":" 

    invoke-direct {v0, v1},Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1,Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mSeparatorTint:I

    invoke-direct {v1, v2},Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {v0},Landroid/text/Spannable;->length()I 

    move-result v2 

    invoke-interface {v0, v1, v3, v2, v4},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v1,Landroid/text/style/RelativeSizeSpan;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHourSeparatorFloat:F

    invoke-direct {v1, v2},Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-interface {v0},Landroid/text/Spannable;->length()I

    move-result v2 

    invoke-interface {v0, v1, v3, v2, v4},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Lcom/android/mwilky/CustomTypefaceSpan;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHourCustomFont:Landroid/graphics/Typeface;

    invoke-direct {v1, v2}, Lcom/android/mwilky/CustomTypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    invoke-interface {v0},Landroid/text/Spannable;->length()I

    move-result v2 

    invoke-interface {v0, v1, v3, v2, v4},Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->append(Ljava/lang/CharSequence;)V

    return-void 
.end method 

.method private addSpace()V
    .locals 2 

    new-instance v0,Landroid/text/SpannableString; 

    const-string v1, " "

    invoke-direct {v0, v1},Landroid/text/SpannableString; -> <init> (Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->append(Ljava/lang/CharSequence;)V

    return-void 
.end method

.method public printCustomClock()V
    .locals 2

    new-instance v0,Landroid/text/SpannableString;

    const-string v1, "" 

    invoke-direct {v0, v1},Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    iget v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateLayout:I 

    packed-switch v1, :pswitch_data_0 
    
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDay:Z 

    if-eqz v1,:cond_0 

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addDay()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addSpace()V

    :cond_0 
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addHour()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDate:Z

    if-eqz v1,:cond_1 

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addSpace()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addDate()V

    :cond_1 
    :goto_0 
    return-void 

    :pswitch_0 
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDate:Z 

    if-eqz v1,:cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addDate()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addSpace()V

    :cond_2 
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addHour()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDay:Z

    if-eqz v1,:cond_1 

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addSpace()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addDay()V

    goto:goto_0 

    :pswitch_1 
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addHour()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDay:Z

    if-eqz v1,:cond_3 

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addSpace()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addDay()V

    :cond_3 
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDate:Z

    if-eqz v1,:cond_1 

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addSpace()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addDate()V

    goto:goto_0 

    :pswitch_2 
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addHour()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDate:Z

    if-eqz v1,:cond_4 

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addSpace()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addDate()V

    :cond_4 
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/Clock;->mShowDay:Z

    if-eqz v1,:cond_1 

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addSpace()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/Clock;->addDay()V

    goto :goto_0 

    nop 

    :pswitch_data_0 
    .packed-switch 0x1 
        :pswitch_0 
        :pswitch_1
        :pswitch_2 
    .end packed-switch 
.end method

.method private sizeSetter(II)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "i2"    # I

    .line 45
    packed-switch p1, :pswitch_data_6e

    .line 104
    :pswitch_3
    const/high16 v0, 0x3f800000    # 1.0f

    .local v0, "f":F
    goto :goto_4f

    .line 101
    .end local v0    # "f":F
    :pswitch_6
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 102
    .restart local v0    # "f":F
    goto :goto_4f

    .line 98
    .end local v0    # "f":F
    :pswitch_9
    const v0, 0x3fb9999a    # 1.45f

    .line 99
    .restart local v0    # "f":F
    goto :goto_4f

    .line 95
    .end local v0    # "f":F
    :pswitch_d
    const v0, 0x3fb33333    # 1.4f

    .line 96
    .restart local v0    # "f":F
    goto :goto_4f

    .line 92
    .end local v0    # "f":F
    :pswitch_11
    const v0, 0x3faccccd    # 1.35f

    .line 93
    .restart local v0    # "f":F
    goto :goto_4f

    .line 89
    .end local v0    # "f":F
    :pswitch_15
    const v0, 0x3fa66666    # 1.3f

    .line 90
    .restart local v0    # "f":F
    goto :goto_4f

    .line 86
    .end local v0    # "f":F
    :pswitch_19
    const/high16 v0, 0x3fa00000    # 1.25f

    .line 87
    .restart local v0    # "f":F
    goto :goto_4f

    .line 83
    .end local v0    # "f":F
    :pswitch_1c
    const v0, 0x3f99999a    # 1.2f

    .line 84
    .restart local v0    # "f":F
    goto :goto_4f

    .line 80
    .end local v0    # "f":F
    :pswitch_20
    const v0, 0x3f933333    # 1.15f

    .line 81
    .restart local v0    # "f":F
    goto :goto_4f

    .line 77
    .end local v0    # "f":F
    :pswitch_24
    const v0, 0x3f8ccccd    # 1.1f

    .line 78
    .restart local v0    # "f":F
    goto :goto_4f

    .line 74
    .end local v0    # "f":F
    :pswitch_28
    const v0, 0x3f866666    # 1.05f

    .line 75
    .restart local v0    # "f":F
    goto :goto_4f

    .line 71
    .end local v0    # "f":F
    :pswitch_2c
    const v0, 0x3f733333    # 0.95f

    .line 72
    .restart local v0    # "f":F
    goto :goto_4f

    .line 68
    .end local v0    # "f":F
    :pswitch_30
    const v0, 0x3f666666    # 0.9f

    .line 69
    .restart local v0    # "f":F
    goto :goto_4f

    .line 65
    .end local v0    # "f":F
    :pswitch_34
    const v0, 0x3f59999a    # 0.85f

    .line 66
    .restart local v0    # "f":F
    goto :goto_4f

    .line 62
    .end local v0    # "f":F
    :pswitch_38
    const v0, 0x3f4ccccd    # 0.8f

    .line 63
    .restart local v0    # "f":F
    goto :goto_4f

    .line 59
    .end local v0    # "f":F
    :pswitch_3c
    const/high16 v0, 0x3f400000    # 0.75f

    .line 60
    .restart local v0    # "f":F
    goto :goto_4f

    .line 56
    .end local v0    # "f":F
    :pswitch_3f
    const v0, 0x3f333333    # 0.7f

    .line 57
    .restart local v0    # "f":F
    goto :goto_4f

    .line 53
    .end local v0    # "f":F
    :pswitch_43
    const v0, 0x3f266666    # 0.65f

    .line 54
    .restart local v0    # "f":F
    goto :goto_4f

    .line 50
    .end local v0    # "f":F
    :pswitch_47
    const v0, 0x3f19999a    # 0.6f

    .line 51
    .restart local v0    # "f":F
    goto :goto_4f

    .line 47
    .end local v0    # "f":F
    :pswitch_4b
    const v0, 0x3f0ccccd    # 0.55f

    .line 48
    .restart local v0    # "f":F
    nop

    .line 107
    :goto_4f
    const/4 v1, 0x1

    if-eq p2, v1, :cond_6b

    const/4 v1, 0x2

    if-eq p2, v1, :cond_68

    const/4 v1, 0x3

    if-eq p2, v1, :cond_65

    const/4 v1, 0x4

    if-eq p2, v1, :cond_62

    const/4 v1, 0x5

    if-eq p2, v1, :cond_5f

    .line 124
    return-void

    .line 121
    :cond_5f
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mAmPmFloat:F

    .line 122
    return-void

    .line 118
    :cond_62
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHourSeparatorFloat:F

    .line 119
    return-void

    .line 115
    :cond_65
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDateFloat:F

    .line 116
    return-void

    .line 112
    :cond_68
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mHourFloat:F

    .line 113
    return-void

    .line 109
    :cond_6b
    iput v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mDayFloat:F

    .line 110
    return-void

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_47
        :pswitch_43
        :pswitch_3f
        :pswitch_3c
        :pswitch_38
        :pswitch_34
        :pswitch_30
        :pswitch_2c
        :pswitch_3
        :pswitch_28
        :pswitch_24
        :pswitch_20
        :pswitch_1c
        :pswitch_19
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method
