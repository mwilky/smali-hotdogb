.class public Lcom/oneplus/aod/OpAnalogClock;
.super Landroid/widget/FrameLayout;
.source "OpAnalogClock.java"


# static fields
.field private static final ANALOG_RES:[[I


# instance fields
.field private mBackground:Landroid/view/View;

.field private mClockSize:I

.field private mDot:Landroid/view/View;

.field private mHour:Landroid/view/View;

.field private mMin:Landroid/view/View;

.field private mOuter:Landroid/view/View;

.field private mStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->analog_background:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->analog_hour:I

    const/4 v6, 0x1

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->analog_min:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->analog_dot:I

    const/4 v7, 0x3

    aput v4, v3, v7

    const/4 v4, 0x4

    aput v5, v3, v4

    aput-object v3, v1, v5

    new-array v2, v2, [I

    sget v3, Lcom/android/systemui/R$drawable;->analog_my_background:I

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$drawable;->analog_my_hour:I

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$drawable;->analog_my_min:I

    aput v3, v2, v0

    sget v0, Lcom/android/systemui/R$drawable;->analog_my_dot:I

    aput v0, v2, v7

    sget v0, Lcom/android/systemui/R$drawable;->analog_my_outer:I

    aput v0, v2, v4

    aput-object v2, v1, v6

    sput-object v1, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private loadDimensions()V
    .locals 2

    iget v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->op_aod_clock_analog_my_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->clock_analog_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    :goto_0
    return-void
.end method

.method private updateLayout()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget p0, p0, Lcom/oneplus/aod/OpAnalogClock;->mClockSize:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->refreshTime()V
    
    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->updateClockColors()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->analog_hour:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->analog_min:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->analog_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mBackground:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->analog_outer:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    sget v0, Lcom/android/systemui/R$id;->analog_dot:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mDot:Landroid/view/View;

    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->loadDimensions()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->updateLayout()V

    return-void
.end method

.method public refreshTime()V
    .locals 5

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refreshTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " hour = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", min = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpAnalogClock"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v0, v3

    int-to-float v1, v1

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v3, v1

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    add-float/2addr v0, v3

    mul-float/2addr v1, v2

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setRotation(F)V

    iget-object v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object p0, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method

.method public setClockStyle(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iput v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    iput v1, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    :goto_0
    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->loadDimensions()V

    invoke-direct {p0}, Lcom/oneplus/aod/OpAnalogClock;->updateLayout()V

    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    sget-object v2, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    iget v3, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    aget-object v2, v2, v3

    aget v1, v2, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    sget-object v1, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    iget v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mBackground:Landroid/view/View;

    sget-object v1, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    iget v2, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    aget-object v1, v1, v2

    aget v0, v1, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mDot:Landroid/view/View;

    sget-object v0, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    iget v1, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    sget-object v0, Lcom/oneplus/aod/OpAnalogClock;->ANALOG_RES:[[I

    iget v1, p0, Lcom/oneplus/aod/OpAnalogClock;->mStyle:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/aod/OpAnalogClock;->refreshTime()V

    :cond_1
    return-void
.end method

.method public static getAccentColor(Landroid/content/Context;)I
    .registers 11
    .param p0, "Context"    # Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 81
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "oem_black_mode_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "HexColorBlack":Ljava/lang/String;
    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "HexColorWhite":Ljava/lang/String;
    const/4 v3, 0x2

    const-string v4, "oem_black_mode"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 84
    .local v4, "theme":I
    const-string v5, "oem_special_theme"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 85
    .local v5, "specialTheme":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    .line 86
    const v3, -0x43fd3

    return v3

    .line 87
    :cond_25
    const/16 v7, 0x10

    const/4 v8, -0x1

    if-ne v4, v6, :cond_41

    .line 88
    const-string v9, "oem_black_mode_accent_color_index"

    invoke-static {v0, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_37

    .line 89
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 91
    :cond_37
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v3, v6

    return v3

    .line 94
    :cond_41
    if-nez v4, :cond_5a

    .line 95
    const-string v9, "oem_white_mode_accent_color_index"

    invoke-static {v0, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_50

    .line 96
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 98
    :cond_50
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v3, v6

    return v3

    .line 101
    :cond_5a
    if-ne v4, v3, :cond_5d

    .line 102
    return v8

    .line 104
    :cond_5d
    return v8
.end method

.method public updateClockColors()V
    .registers 12

    .line 33
    iget-object v0, p0, Lcom/oneplus/aod/OpAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 34
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    const-string v2, "tweaks_unlock_aod_colors"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 35
    .local v2, "isCustomClock":I
    const-string v3, "tweaks_unlock_aod_accent_colors"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 36
    .local v3, "isCustomClockAccent":I
    const-string v4, "tweaks_aod_text_color_system_accent"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 37
    .local v4, "isCustomClockSystemAccent":I
    const-string v5, "tweaks_aod_accent_text_color_system_accent"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 38
    .local v1, "isCustomClockAccentSystemAccent":I
    iget-object v5, p0, Lcom/oneplus/aod/OpAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "color"

    const-string v7, "clock_ten_digit_white"

    invoke-static {v7, v6}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    const-string v7, "tweaks_aod_text_color"

    invoke-static {v0, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 39
    .local v5, "minColor":I
    iget-object v7, p0, Lcom/oneplus/aod/OpAnalogClock;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "clock_ten_digit_red"

    invoke-static {v8, v6}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    const-string v7, "tweaks_aod_accent_text_color"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 40
    .local v6, "hourColor":I
    iget-object v7, p0, Lcom/oneplus/aod/OpAnalogClock;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/aod/OpAnalogClock;->getAccentColor(Landroid/content/Context;)I

    move-result v7

    .line 41
    .local v7, "accentColor":I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_79

    .line 42
    if-ne v4, v8, :cond_69

    .line 45
    iget-object v9, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 46
    iget-object v9, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_79

    .line 50
    :cond_69
    iget-object v9, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 51
    iget-object v9, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 54
    :cond_79
    :goto_79
    const/4 v9, 0x0

    if-nez v2, :cond_81

    .line 57
    iget-object v10, p0, Lcom/oneplus/aod/OpAnalogClock;->mMin:Landroid/view/View;

    invoke-virtual {v10, v9}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 59
    :cond_81
    if-ne v3, v8, :cond_e6

    .line 60
    if-ne v1, v8, :cond_b6

    .line 61
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 62
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 63
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mDot:Landroid/view/View;

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 64
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mDot:Landroid/view/View;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 65
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 66
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto :goto_e6

    .line 74
    :cond_b6
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 75
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 76
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mDot:Landroid/view/View;

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 77
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mDot:Landroid/view/View;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 78
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 79
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v10}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 82
    :cond_e6
    :goto_e6
    if-nez v3, :cond_f7

    .line 85
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mHour:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 86
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mDot:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 87
    iget-object v8, p0, Lcom/oneplus/aod/OpAnalogClock;->mOuter:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 89
    :cond_f7
    return-void
.end method
