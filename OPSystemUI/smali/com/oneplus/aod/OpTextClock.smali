.class public Lcom/oneplus/aod/OpTextClock;
.super Landroid/view/View;
.source "OpTextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mDigitColorRed:I

.field private mDigitColorWhite:I

.field private mFontBaseLineY:F

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mHourPaint:Landroid/graphics/Paint;

.field private mMinPaint:Landroid/graphics/Paint;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "h:mm a"

    sput-object v0, Lcom/oneplus/aod/OpTextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    sput-object v0, Lcom/oneplus/aod/OpTextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/oneplus/aod/OpTextClock$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpTextClock$1;-><init>(Lcom/oneplus/aod/OpTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mTicker:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpTextClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OpTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OpTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/oneplus/aod/OpTextClock$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OpTextClock$1;-><init>(Lcom/oneplus/aod/OpTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mTicker:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oneplus/aod/OpTextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpTextClock;->init()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move-object p0, p2

    goto :goto_0

    :cond_0
    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OpTextClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OpTextClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OpTextClock;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/aod/OpTextClock;->mTicker:Ljava/lang/Runnable;

    return-object p0
.end method

.method private chooseFormat()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextClock;->chooseFormat(Z)V

    return-void
.end method

.method private chooseFormat(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/aod/OpTextClock;->is24HourModeEnabled()Z

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v1, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/OpTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/OpTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v1, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/OpTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OpTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/oneplus/aod/OpTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mDescFormat:Ljava/lang/CharSequence;

    :goto_0
    iget-boolean v0, p0, Lcom/oneplus/aod/OpTextClock;->mHasSeconds:Z

    iget-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/aod/OpTextClock;->mHasSeconds:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/aod/OpTextClock;->mHasSeconds:Z

    if-eq v0, p1, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/aod/OpTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/oneplus/aod/OpTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpTextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/aod/OpTextClock;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private drawClockDefault(Landroid/graphics/Canvas;)V
    .locals 12
    
    invoke-virtual {p0}, Lcom/oneplus/aod/OpTextClock;->updateTextColors()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [C

    invoke-virtual {p0}, Lcom/oneplus/aod/OpTextClock;->is24HourModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "HH"

    goto :goto_0

    :cond_0
    const-string v3, "hh"

    :goto_0
    iget-object v4, p0, Lcom/oneplus/aod/OpTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/OpTextClock;->mTime:Ljava/util/Calendar;

    const-string v5, "mm"

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [F

    iget-object v6, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3, v5}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    const/4 v6, 0x0

    aget v7, v5, v6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v8

    div-int/2addr v8, v1

    int-to-float v8, v8

    aget v5, v5, v6

    sub-float/2addr v8, v5

    float-to-int v5, v8

    iget-object v8, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x31

    if-ne v8, v9, :cond_1

    iget v8, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorRed:I

    goto :goto_1

    :cond_1
    iget v8, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    :goto_1
    iget-object v10, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v10, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aput-char v8, v2, v6

    iget-object v8, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    aget-char v10, v2, v6

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v6, v11, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v8, Lcom/android/systemui/R$dimen;->clock_view_default_font_base_line1_y:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/OpTextClock;->mFontBaseLineY:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v6, v2, v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    int-to-float v5, v5

    iget v8, p0, Lcom/oneplus/aod/OpTextClock;->mFontBaseLineY:F

    iget-object v10, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v8, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v2, v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_2

    iget v0, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorRed:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    :goto_2
    iget-object v3, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-char v2, v2, v11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-float/2addr v5, v7

    iget v2, p0, Lcom/oneplus/aod/OpTextClock;->mFontBaseLineY:F

    iget-object v3, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$dimen;->clock_view_default_font_base_line2_y:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/OpTextClock;->mFontBaseLineY:F

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/aod/OpTextClock;->mFontBaseLineY:F

    iget-object p0, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v0, v1, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    iget-object v0, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextClock;->createTime(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OpTextClock;->chooseFormat(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->clock_ten_digit_red:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorRed:I

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$color;->clock_ten_digit_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
    
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpTextClock;->showThinText()Z
    
    move-result v2
    
    const/4 v1, 0x1
    
    if-eqz v2, :cond_stock

    const/4 v1, 0x0
    
    goto :goto_mw

    :cond_stock
    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getMclTypeface(I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_mw
    :cond_3
    if-nez v0, :cond_4

    const-string v0, "sans-serif"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_4
    iget-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-direct {p0}, Lcom/oneplus/aod/OpTextClock;->updateTextSize()V

    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/aod/OpTextClock;->updateTextSize()V

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/aod/OpTextClock;->mClockStyle:I

    if-nez v1, :cond_1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isMCLVersion()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateTextSize()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->clock_view_default_font_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->clock_view_default_font_size:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public is24HourModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/OpTextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OpTextClock;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget v0, p0, Lcom/oneplus/aod/OpTextClock;->mClockStyle:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpTextClock;->drawClockDefault(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setClockStyle(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/OpTextClock;->mClockStyle:I

    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/OpTextClock;->mFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/aod/OpTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpTextClock;->onTimeChanged()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/OpTextClock;->mFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/aod/OpTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpTextClock;->onTimeChanged()V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/OpTextClock;->mShowCurrentUserTime:Z

    invoke-direct {p0}, Lcom/oneplus/aod/OpTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpTextClock;->onTimeChanged()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/OpTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OpTextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/aod/OpTextClock;->onTimeChanged()V

    return-void
.end method

.method public setAodToAccentColor(Z)V
    .registers 12
    .param p1, "isAccent"    # Z

    .line 46
    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 47
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "oem_black_mode_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "HexColorBlack":Ljava/lang/String;
    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "HexColorWhite":Ljava/lang/String;
    const/4 v3, 0x2

    const-string v4, "oem_black_mode"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 50
    .local v4, "theme":I
    const-string v5, "oem_special_theme"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 51
    .local v5, "specialTheme":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_30

    .line 52
    const v3, -0x43fd3

    if-eqz p1, :cond_2c

    .line 53
    iput v3, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorRed:I

    goto/16 :goto_9c

    .line 55
    :cond_2c
    iput v3, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    goto/16 :goto_9c

    .line 57
    :cond_30
    const/16 v7, 0x10

    const/4 v8, -0x1

    if-ne v4, v6, :cond_63

    .line 58
    const-string v9, "oem_black_mode_accent_color_index"

    invoke-static {v0, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_4d

    .line 59
    if-eqz p1, :cond_46

    .line 60
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorRed:I

    goto :goto_9c

    .line 62
    :cond_46
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    goto :goto_9c

    .line 65
    :cond_4d
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 66
    if-eqz p1, :cond_5b

    .line 67
    invoke-static {v1, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v3, v6

    iput v3, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorRed:I

    goto :goto_9c

    .line 69
    :cond_5b
    invoke-static {v1, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v3, v6

    iput v3, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    goto :goto_9c

    .line 72
    :cond_63
    if-nez v4, :cond_93

    .line 73
    const-string v9, "oem_white_mode_accent_color_index"

    invoke-static {v0, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_7d

    .line 74
    if-eqz p1, :cond_76

    .line 75
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorRed:I

    goto :goto_9c

    .line 77
    :cond_76
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    goto :goto_9c

    .line 80
    :cond_7d
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 81
    if-eqz p1, :cond_8b

    .line 82
    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v3, v6

    iput v3, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorRed:I

    goto :goto_9c

    .line 84
    :cond_8b
    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v3, v6

    iput v3, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    goto :goto_9c

    .line 87
    :cond_93
    if-ne v4, v3, :cond_9c

    .line 88
    if-eqz p1, :cond_9a

    .line 89
    iput v8, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorRed:I

    goto :goto_9c

    .line 91
    :cond_9a
    iput v8, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    .line 94
    :cond_9c
    :goto_9c
    return-void
.end method

.method public updateTextColors()V
    .registers 11

    .line 17
    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 18
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    const-string v2, "tweaks_unlock_aod_colors"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 19
    .local v2, "isCustomClock":I
    const-string v3, "tweaks_unlock_aod_accent_colors"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 20
    .local v3, "isCustomClockAccent":I
    const-string v4, "tweaks_aod_text_color_system_accent"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 21
    .local v4, "isCustomClockSystemAccent":I
    const-string v5, "tweaks_aod_accent_text_color_system_accent"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 22
    .local v5, "isCustomClockAccentSystemAccent":I
    const-string v6, "clock_ten_digit_white"

    const-string v7, "color"

    const/4 v8, 0x1

    if-ne v2, v8, :cond_42

    .line 23
    if-ne v4, v8, :cond_2c

    .line 24
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/OpTextClock;->setAodToAccentColor(Z)V

    goto :goto_42

    .line 26
    :cond_2c
    iget-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v6, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const-string v9, "tweaks_aod_text_color"

    invoke-static {v0, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    .line 29
    :cond_42
    :goto_42
    if-nez v2, :cond_54

    .line 30
    iget-object v1, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v6, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorWhite:I

    .line 32
    :cond_54
    const-string v1, "clock_ten_digit_red"

    if-ne v3, v8, :cond_74

    .line 33
    if-ne v5, v8, :cond_5e

    .line 35
    invoke-virtual {p0, v8}, Lcom/oneplus/aod/OpTextClock;->setAodToAccentColor(Z)V

    goto :goto_74

    .line 37
    :cond_5e
    iget-object v6, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v1, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const-string v8, "tweaks_aod_accent_text_color"

    invoke-static {v0, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorRed:I

    .line 40
    :cond_74
    :goto_74
    if-nez v3, :cond_86

    .line 41
    iget-object v6, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v1, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/OpTextClock;->mDigitColorRed:I

    .line 43
    :cond_86
    return-void
.end method

.method public showThinText()Z
    .registers 5

    .line 368
    iget-object v0, p0, Lcom/oneplus/aod/OpTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 369
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_thin_aod_clock"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    move v2, v3

    nop

    :cond_12
    return v2
.end method
