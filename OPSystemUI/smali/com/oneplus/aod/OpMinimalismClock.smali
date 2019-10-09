.class public Lcom/oneplus/aod/OpMinimalismClock;
.super Landroid/widget/RelativeLayout;
.source "OpMinimalismClock.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHour:Landroid/widget/ImageView;

.field private mMin:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "OpMinimalismClock"

    iput-object p1, p0, Lcom/oneplus/aod/OpMinimalismClock;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/aod/OpMinimalismClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "OpMinimalismClock"

    iput-object p1, p0, Lcom/oneplus/aod/OpMinimalismClock;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/aod/OpMinimalismClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "OpMinimalismClock"

    iput-object p1, p0, Lcom/oneplus/aod/OpMinimalismClock;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/aod/OpMinimalismClock;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/aod/OpMinimalismClock;->TAG:Ljava/lang/String;

    const-string v0, "init"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oneplus/aod/OpMinimalismClock;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/aod/OpMinimalismClock;->refreshTime()V
    
    invoke-virtual {p0}, Lcom/oneplus/aod/OpMinimalismClock;->updateClockColors()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    sget v0, Lcom/android/systemui/R$id;->minimalism_hour:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpMinimalismClock;->mHour:Landroid/widget/ImageView;

    sget v0, Lcom/android/systemui/R$id;->minimalism_min:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OpMinimalismClock;->mMin:Landroid/widget/ImageView;

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

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/aod/OpMinimalismClock;->mHour:Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/R$drawable;->minimalism_hour:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/oneplus/aod/OpMinimalismClock;->mMin:Landroid/widget/ImageView;

    sget v3, Lcom/android/systemui/R$drawable;->minimalism_min:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    int-to-float v1, v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/high16 v3, 0x41400000    # 12.0f

    div-float/2addr v1, v3

    int-to-float v0, v0

    const/high16 v3, 0x41f00000    # 30.0f

    mul-float/2addr v3, v0

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    mul-float/2addr v0, v2

    div-float/2addr v0, v4

    iget-object v2, p0, Lcom/oneplus/aod/OpMinimalismClock;->mHour:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object p0, p0, Lcom/oneplus/aod/OpMinimalismClock;->mMin:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public static getAccentColor(Landroid/content/Context;)I
    .registers 11
    .param p0, "Context"    # Landroid/content/Context;

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 326
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "oem_black_mode_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "HexColorBlack":Ljava/lang/String;
    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, "HexColorWhite":Ljava/lang/String;
    const/4 v3, 0x2

    const-string v4, "oem_black_mode"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 329
    .local v4, "theme":I
    const-string v5, "oem_special_theme"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 330
    .local v5, "specialTheme":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    .line 331
    const v3, -0x43fd3

    return v3

    .line 332
    :cond_25
    const/16 v7, 0x10

    const/4 v8, -0x1

    if-ne v4, v6, :cond_41

    .line 333
    const-string v9, "oem_black_mode_accent_color_index"

    invoke-static {v0, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_37

    .line 334
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 336
    :cond_37
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 337
    invoke-static {v1, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v3, v6

    return v3

    .line 339
    :cond_41
    if-nez v4, :cond_5a

    .line 340
    const-string v9, "oem_white_mode_accent_color_index"

    invoke-static {v0, v9, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_50

    .line 341
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 343
    :cond_50
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 344
    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v3, v6

    return v3

    .line 346
    :cond_5a
    if-ne v4, v3, :cond_5d

    .line 347
    return v8

    .line 349
    :cond_5d
    return v8
.end method

.method public updateClockColors()V
    .registers 12

    .line 294
    iget-object v0, p0, Lcom/oneplus/aod/OpMinimalismClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 295
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const/4 v1, 0x0

    const-string v2, "tweaks_unlock_aod_colors"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 296
    .local v2, "isCustomClock":I
    const-string v3, "tweaks_unlock_aod_accent_colors"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 297
    .local v3, "isCustomClockAccent":I
    const-string v4, "tweaks_aod_text_color_system_accent"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 298
    .local v4, "isCustomClockSystemAccent":I
    const-string v5, "tweaks_aod_accent_text_color_system_accent"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 299
    .local v1, "isCustomClockAccentSystemAccent":I
    iget-object v5, p0, Lcom/oneplus/aod/OpMinimalismClock;->mContext:Landroid/content/Context;

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

    .line 300
    .local v5, "minColor":I
    iget-object v7, p0, Lcom/oneplus/aod/OpMinimalismClock;->mContext:Landroid/content/Context;

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

    .line 301
    .local v6, "hourColor":I
    iget-object v7, p0, Lcom/oneplus/aod/OpMinimalismClock;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/aod/OpMinimalismClock;->getAccentColor(Landroid/content/Context;)I

    move-result v7

    .line 302
    .local v7, "accentColor":I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_67

    .line 303
    if-ne v4, v8, :cond_60

    .line 304
    iget-object v9, p0, Lcom/oneplus/aod/OpMinimalismClock;->mMin:Landroid/widget/ImageView;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v7, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_67

    .line 306
    :cond_60
    iget-object v9, p0, Lcom/oneplus/aod/OpMinimalismClock;->mMin:Landroid/widget/ImageView;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v5, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 309
    :cond_67
    :goto_67
    if-nez v2, :cond_6e

    .line 310
    iget-object v9, p0, Lcom/oneplus/aod/OpMinimalismClock;->mMin:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 312
    :cond_6e
    if-ne v3, v8, :cond_81

    .line 313
    if-ne v1, v8, :cond_7a

    .line 314
    iget-object v8, p0, Lcom/oneplus/aod/OpMinimalismClock;->mHour:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v7, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_81

    .line 316
    :cond_7a
    iget-object v8, p0, Lcom/oneplus/aod/OpMinimalismClock;->mHour:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v6, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 319
    :cond_81
    :goto_81
    if-nez v3, :cond_88

    .line 320
    iget-object v8, p0, Lcom/oneplus/aod/OpMinimalismClock;->mHour:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 322
    :cond_88
    return-void
.end method
