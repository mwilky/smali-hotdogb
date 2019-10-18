.class public Lcom/android/systemui/statusbar/phone/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;
    }
.end annotation


# static fields
.field public static final FORCE_BLANKING:Z

.field public static final FORCE_NO_BLANKING:Z

.field private static sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private static sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;


# instance fields
.field private final mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mControlScreenOffAnimation:Z

.field private mDozeAlwaysOn:Z

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "debug.force_no_blanking"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    const-string v1, "debug.force_blanking"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    new-instance p1, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    if-eqz p1, :cond_0

    const-string v0, "doze_always_on"

    const-string v1, "accessibility_display_inversion_enabled"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getBoolean(Ljava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method private getInt(Ljava/lang/String;I)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x0

    const p2, 0xea60

    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public doubleTapReportsTouchCoordinates()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$bool;->doze_double_tap_reports_touch_coordinates:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getAlwaysOn()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    return p0
.end method

.method public getDisplayNeedsBlanking()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110052

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getDisplayStateSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDozeSuspendDisplayStateSupported()Z
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$bool;->doze_suspend_display_state_supported:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getPickupSubtypePerformsProxCheck(I)Z
    .locals 2

    sget v0, Lcom/android/systemui/R$string;->doze_pickup_subtype_performs_proximity_check:I

    const-string v1, "doze.pickup.proxcheck"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$bool;->doze_pickup_performs_proximity_check:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->mSpec:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    new-instance p0, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;-><init>(Ljava/lang/String;)V

    sput-object p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    :cond_2
    sget-object p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sPickupSubtypePerformsProxMatcher:Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeParameters$IntInOutMatcher;->isIn(I)Z

    move-result p0

    return p0
.end method

.method public getPickupVibrationThreshold()I
    .locals 2

    sget v0, Lcom/android/systemui/R$integer;->doze_pickup_vibration_threshold:I

    const-string v1, "doze.pickup.vibration.threshold"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    return-object p0
.end method

.method protected getPowerManager()Landroid/os/PowerManager;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public getProxCheckBeforePulse()Z
    .locals 2

    sget v0, Lcom/android/systemui/R$bool;->doze_proximity_check_before_pulse:I

    const-string v1, "doze.pulse.proxcheck"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getPulseOnSigMotion()Z
    .locals 2

    sget v0, Lcom/android/systemui/R$bool;->doze_pulse_on_significant_motion:I

    const-string v1, "doze.pulse.sigmotion"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getPulseVisibleDuration(I)I
    .registers 21
    .param p1, "i"    # I

    .line 109
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 110
    .local v2, "ContentResolver":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isAlwaysOnEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 111
    const v3, 0x7fffffff

    return v3

    .line 113
    :cond_14
    const/high16 v3, 0x3f800000    # 1.0f

    const-string v4, "animator_duration_scale"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    float-to-double v3, v3

    .line 114
    .local v3, "anim_scale":D
    sget v5, Lcom/oneplus/aod/OpAodLightEffectContainer;->mTotalRuntime:I

    .line 115
    .local v5, "runtime":I
    int-to-double v6, v5

    mul-double/2addr v6, v3

    .line 116
    .local v6, "total_length_double":D
    double-to-int v8, v6

    .line 117
    .local v8, "total_length":I
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "total_length_string":Ljava/lang/String;
    sget-boolean v10, Lcom/android/mwilky/Renovate;->mEdgeAnimOnUnreadNotifs:Z

    const-string v12, "doze.pulse.duration.visible"

    const-string v14, "op.doze.single.tap.pusle.duration.visible"

    const-string v15, "op.doze.pick.up.pusle.duration.visible"

    const-string v13, "custom doze duration = "

    const-string v11, "op.doze.three.key.pusle.duration.visible"

    move-object/from16 v16, v2

    .end local v2    # "ContentResolver":Landroid/content/ContentResolver;
    .local v16, "ContentResolver":Landroid/content/ContentResolver;
    const/4 v2, 0x1

    move-wide/from16 v17, v3

    .end local v3    # "anim_scale":D
    .local v17, "anim_scale":D
    const-string v3, "mwilky"

    if-ne v10, v2, :cond_a3

    sget-boolean v4, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mActiveNotifications:Z

    if-eqz v4, :cond_a3

    .line 119
    const/16 v2, 0xbb8

    if-ge v8, v2, :cond_90

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stock doze duration due to quick animation ="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/16 v2, 0xa

    if-ne v1, v2, :cond_63

    .line 123
    const v2, 0x7f0b007f

    invoke-direct {v0, v11, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 124
    :cond_63
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6e

    .line 125
    const v2, 0x7f0b007c

    invoke-direct {v0, v15, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 126
    :cond_6e
    const/16 v2, 0xc

    if-ne v1, v2, :cond_7a

    .line 127
    const v2, 0x7f0b007e

    invoke-direct {v0, v14, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 128
    :cond_7a
    const/16 v2, 0xd

    if-ne v1, v2, :cond_88

    .line 129
    const v2, 0x7f0b007b

    const-string v3, "op.doze.fingerprint.poke.pusle.duration.visible"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 131
    :cond_88
    const v2, 0x7f0b007d

    invoke-direct {v0, v12, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 134
    :cond_90
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return v8

    .line 138
    :cond_a3
    if-ne v1, v2, :cond_bc

    sget v4, Lcom/android/mwilky/Renovate;->mNotifAnimRepeatCount:I

    if-lt v4, v2, :cond_bc

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v8

    .line 142
    :cond_bc
    const-string v2, "stock doze duration"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/16 v2, 0xa

    if-ne v1, v2, :cond_cd

    .line 144
    const v2, 0x7f0b007f

    invoke-direct {v0, v11, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 145
    :cond_cd
    const/4 v2, 0x3

    if-ne v1, v2, :cond_d8

    .line 146
    const v2, 0x7f0b007c

    invoke-direct {v0, v15, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 147
    :cond_d8
    const/16 v2, 0xc

    if-ne v1, v2, :cond_e4

    .line 148
    const v2, 0x7f0b007e

    invoke-direct {v0, v14, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 149
    :cond_e4
    const/16 v2, 0xd

    if-ne v1, v2, :cond_f2

    .line 150
    const v2, 0x7f0b007b

    const-string v3, "op.doze.fingerprint.poke.pusle.duration.visible"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 152
    :cond_f2
    const v2, 0x7f0b007d

    invoke-direct {v0, v12, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method


.method public getScreenBrightnessDoze()F
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00ad

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getWallpaperAodDuration()J
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1194

    return-wide v0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperVisibilityDuration:J

    return-wide v0
.end method

.method public getWallpaperFadeOutDuration()J
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperFadeOutDuration:J

    return-wide v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    return-void
.end method

.method public setControlScreenOffAnimation(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    return-void
.end method

.method public shouldControlScreenOff()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    return p0
.end method
