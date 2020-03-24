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
    .registers 26
    .param p1, "i"    # I

    .line 63
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "pulse_reason":Ljava/lang/String;
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->isAlwaysOnEnabled()Z

    move-result v3

    const v4, 0x7fffffff

    if-eqz v3, :cond_12

    .line 65
    return v4

    .line 66
    :cond_12
    const/4 v5, 0x1

    if-ne v1, v5, :cond_17

    move v6, v5

    goto :goto_18

    :cond_17
    const/4 v6, 0x0

    :goto_18
    sget-boolean v7, Lcom/android/mwilky/Renovate;->mAlwaysOnNewNotifications:Z

    and-int/2addr v6, v7

    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/mwilky/Renovate;->isZenActive(Landroid/content/Context;)Z

    move-result v7

    xor-int/2addr v7, v5

    and-int/2addr v6, v7

    sget-boolean v7, Lcom/oneplus/aod/OpSingleNotificationView;->mIsMediaNotification:Z

    xor-int/2addr v7, v5

    and-int/2addr v6, v7

    if-eqz v6, :cond_2a

    .line 68
    return v4

    .line 70
    :cond_2a
    sget v4, Lcom/android/mwilky/Renovate;->mAnimScale:F

    float-to-double v6, v4

    .line 71
    .local v6, "anim_scale":D
    sget v4, Lcom/oneplus/aod/OpAodLightEffectContainer;->mTotalRuntime:I

    .line 72
    .local v4, "runtime":I
    int-to-double v8, v4

    mul-double/2addr v8, v6

    .line 73
    .local v8, "total_length_double":D
    double-to-int v10, v8

    .line 74
    .local v10, "total_length":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 75
    .local v11, "total_length_string":Ljava/lang/String;
    sget v12, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v13, 0xa

    if-eq v12, v13, :cond_3e

    move v12, v5

    goto :goto_3f

    :cond_3e
    const/4 v12, 0x0

    :goto_3f
    sget-boolean v14, Lcom/android/mwilky/Renovate;->mEdgeAnimOnUnreadNotifs:Z

    and-int/2addr v12, v14

    sget-boolean v14, Lcom/oneplus/aod/OpAodNotificationIconAreaController;->mActiveNotifications:Z

    and-int/2addr v12, v14

    const-string v14, "doze.pulse.duration.visible"

    const-string v15, "op_doze_single_tap_pulse_duration_visible"

    const-string v3, "op.doze.single.tap.pusle.duration.visible"

    const-string v5, "op_doze_pick_up_pulse_duration_visible"

    const-string v13, "op.doze.pick.up.pusle.duration.visible"

    move-object/from16 v18, v2

    .end local v2    # "pulse_reason":Ljava/lang/String;
    .local v18, "pulse_reason":Ljava/lang/String;
    const-string v2, "op_doze_three_key_pulse_duration_visible"

    move/from16 v19, v4

    .end local v4    # "runtime":I
    .local v19, "runtime":I
    const-string v4, "op.doze.three.key.pusle.duration.visible"

    move-wide/from16 v20, v6

    .end local v6    # "anim_scale":D
    .local v20, "anim_scale":D
    const/4 v6, 0x3

    const-string v7, "integer"

    if-eqz v12, :cond_a4

    .line 76
    const/16 v12, 0xbb8

    if-ge v10, v12, :cond_a3

    .line 79
    const/16 v12, 0xa

    if-ne v1, v12, :cond_6f

    .line 80
    invoke-static {v2, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v4, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 81
    :cond_6f
    if-ne v1, v6, :cond_7a

    .line 82
    invoke-static {v5, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v13, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 83
    :cond_7a
    const/16 v2, 0xc

    if-ne v1, v2, :cond_87

    .line 84
    invoke-static {v15, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 85
    :cond_87
    const/16 v2, 0xd

    if-ne v1, v2, :cond_98

    .line 86
    const-string v2, "op_doze_fingerprint_poke_pulse_duration_visible"

    invoke-static {v2, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "op.doze.fingerprint.poke.pusle.duration.visible"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 88
    :cond_98
    const-string v2, "op_doze_pulse_duration_visible"

    invoke-static {v2, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v14, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 92
    :cond_a3
    return v10

    .line 95
    :cond_a4
    sget v12, Lcom/oneplus/aod/OpAodLightEffectContainer;->mLightIndex:I

    const/16 v6, 0xa

    if-eq v12, v6, :cond_ac

    const/4 v6, 0x1

    goto :goto_ad

    :cond_ac
    const/4 v6, 0x0

    :goto_ad
    const/4 v12, 0x1

    if-ne v1, v12, :cond_b3

    move/from16 v17, v12

    goto :goto_b5

    :cond_b3
    const/16 v17, 0x0

    :goto_b5
    and-int v6, v6, v17

    move-wide/from16 v22, v8

    .end local v8    # "total_length_double":D
    .local v22, "total_length_double":D
    sget v8, Lcom/android/mwilky/Renovate;->mNotifAnimRepeatCount:I

    if-lt v8, v12, :cond_c0

    move/from16 v16, v12

    goto :goto_c2

    :cond_c0
    const/16 v16, 0x0

    :goto_c2
    and-int v6, v6, v16

    if-eqz v6, :cond_c7

    .line 97
    return v10

    .line 100
    :cond_c7
    const/16 v6, 0xa

    if-ne v1, v6, :cond_d4

    .line 101
    invoke-static {v2, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v4, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 102
    :cond_d4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_e0

    .line 103
    invoke-static {v5, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v13, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 104
    :cond_e0
    const/16 v2, 0xc

    if-ne v1, v2, :cond_ed

    .line 105
    invoke-static {v15, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 106
    :cond_ed
    const/16 v2, 0xd

    if-ne v1, v2, :cond_fe

    .line 107
    const-string v2, "op_doze_fingerprint_poke_pulse_duration_visible"

    invoke-static {v2, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "op.doze.fingerprint.poke.pusle.duration.visible"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result v2

    return v2

    .line 109
    :cond_fe
    const-string v2, "op_doze_pulse_duration_visible"

    invoke-static {v2, v7}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v14, v2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

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
