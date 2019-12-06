.class public Lcom/android/systemui/qs/tiles/LocationTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "LocationTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;,
        Lcom/android/systemui/qs/tiles/LocationTile$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOCATION_SETTINGS_INTENT:Landroid/content/Intent;


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

.field public final mController:Lcom/android/systemui/statusbar/policy/LocationController;

.field public final mDetailAdapter:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

.field public final mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

.field public final mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

.field public mLastState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/tiles/LocationTile;->LOCATION_SETTINGS_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/statusbar/policy/LocationController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    sget p1, Lcom/android/systemui/R$drawable;->ic_location:I

    invoke-static {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    new-instance p1, Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile$Callback;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Lcom/android/systemui/qs/tiles/LocationTile$1;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    iput-object p3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iput-object p4, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mCallback:Lcom/android/systemui/qs/tiles/LocationTile$Callback;

    invoke-interface {p1, p0, p2}, Lcom/android/systemui/statusbar/policy/CallbackController;->observe(Landroidx/lifecycle/LifecycleOwner;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    return-object p0
.end method

.method static synthetic access$400()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/tiles/LocationTile;->LOCATION_SETTINGS_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/tiles/LocationTile;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mLastState:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/systemui/qs/tiles/LocationTile;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mLastState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getStateLabelRes(I)I
    .registers 4
    .param p1, "i"    # I

    .line 16
    const-string v0, "string"

    if-nez p1, :cond_b

    .line 17
    const-string v1, "quick_settings_location_off_label"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 19
    :cond_b
    const/4 v1, 0x1

    if-ne p1, v1, :cond_15

    .line 20
    const-string v1, "quick_settings_location_gps_only_label"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 22
    :cond_15
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1f

    .line 23
    const-string v1, "quick_settings_location_battery_saving_label"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 25
    :cond_1f
    const/4 v1, 0x3

    if-eq p1, v1, :cond_29

    .line 26
    const-string v1, "quick_settings_location_label"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 28
    :cond_29
    const-string v1, "quick_settings_location_high_accuracy_label"

    invoke-static {v1, v0}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private switchCurrentState()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->getLocationCurrentState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationMode(I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {p0, v2}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationMode(I)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {p0, v1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationMode(I)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationMode(I)Z

    :goto_0
    return-void
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_location_changed_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->accessibility_quick_settings_location_changed_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected createDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;Lcom/android/systemui/qs/tiles/LocationTile$1;)V

    return-object v0
.end method

.method public getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mDetailAdapter:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    return-object p0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7a

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->quick_settings_location_label:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 2
    
    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->setVibrateTweak()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$LocationTile$cnlxD4jGztrpcRYGbQTKRSm3Ng0;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$LocationTile$cnlxD4jGztrpcRYGbQTKRSm3Ng0;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->switchCurrentState()V

    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mKeyguard:Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/qs/tiles/-$$Lambda$LocationTile$41Np1y9cymrOtquAhsSgPznnCG8;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/-$$Lambda$LocationTile$41Np1y9cymrOtquAhsSgPznnCG8;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    xor-int/2addr v0, v1

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void
.end method

.method public handleSetListening(Z)V
    .locals 0

    return-void
.end method

.method public handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .registers 11
    .param p1, "booleanState"    # Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 42
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_c

    .line 43
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "i":I
    goto :goto_12

    .line 45
    .end local v0    # "i":I
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/LocationController;->getLocationCurrentState()I

    move-result v0

    .line 47
    .restart local v0    # "i":I
    :goto_12
    const/4 v1, 0x0

    .line 48
    .local v1, "z":Z
    const/4 v2, 0x1

    .line 49
    .local v2, "i2":I
    const/4 v3, 0x1

    if-eqz v0, :cond_19

    move v4, v3

    goto :goto_1a

    :cond_19
    const/4 v4, 0x0

    .line 50
    .local v4, "z2":Z
    :goto_1a
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eq v5, v4, :cond_1f

    .line 51
    const/4 v1, 0x1

    .line 53
    :cond_1f
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 54
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->dualTarget:Z

    .line 55
    const-string v5, "no_share_location"

    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/qs/tiles/LocationTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 56
    iget-boolean v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->disabledByPolicy:Z

    if-nez v5, :cond_31

    .line 57
    const-string v5, "no_config_location"

    invoke-virtual {p0, p1, v5}, Lcom/android/systemui/qs/tiles/LocationTile;->checkIfRestrictionEnforcedByAdminOnly(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/String;)V

    .line 59
    :cond_31
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile;->getStateLabelRes(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 60
    const-string v5, "string"

    if-nez v0, :cond_58

    .line 61
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "accessibility_quick_settings_location_off"

    invoke-static {v6, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 62
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_c5

    .line 63
    :cond_58
    const-string v6, "drawable"

    if-ne v0, v3, :cond_79

    .line 64
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v7, "accessibility_quick_settings_location_gps_only"

    invoke-static {v7, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 65
    const-string v3, "ic_qs_location_sensors_only"

    invoke-static {v3, v6}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_c5

    .line 66
    :cond_79
    const/4 v3, 0x2

    if-ne v0, v3, :cond_99

    .line 67
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v7, "accessibility_quick_settings_location_battery_saving"

    invoke-static {v7, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 68
    const-string v3, "ic_qs_location_battery_saving"

    invoke-static {v3, v6}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_c5

    .line 69
    :cond_99
    const/4 v3, 0x3

    if-eq v0, v3, :cond_b1

    .line 70
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "accessibility_quick_settings_location_on"

    invoke-static {v6, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 71
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    goto :goto_c5

    .line 73
    :cond_b1
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "accessibility_quick_settings_location_high_accuracy"

    invoke-static {v6, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    .line 74
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mIcon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 76
    :goto_c5
    if-eqz v1, :cond_cc

    .line 77
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/LocationTile;->fireToggleStateChanged(Z)V

    .line 79
    :cond_cc
    iget-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    if-eqz v3, :cond_d1

    .line 80
    const/4 v2, 0x2

    .line 82
    :cond_d1
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 83
    const-class v3, Landroid/widget/Switch;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 84
    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/LocationTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$handleClick$0$LocationTile()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->openPanels()V

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->switchCurrentState()V

    return-void
.end method

.method public synthetic lambda$handleSecondaryClick$1$LocationTile()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHost:Lcom/android/systemui/qs/QSHost;

    invoke-interface {v1}, Lcom/android/systemui/qs/QSHost;->openPanels()V

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    xor-int/2addr v0, v1

    invoke-interface {v2, v0}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    return-void
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method
