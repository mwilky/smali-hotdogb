.class Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LocationTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationDetailAdapter"
.end annotation


# instance fields
.field private mButtons:Lcom/android/systemui/volume/SegmentedButtons;

.field private final mButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

.field private mMessageContainer:Landroid/view/ViewGroup;

.field private mMessageText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/systemui/qs/tiles/LocationTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter$1;-><init>(Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile;Lcom/android/systemui/qs/tiles/LocationTile$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/LocationTile;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;)Lcom/android/systemui/volume/SegmentedButtons;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->refresh(I)V

    return-void
.end method

.method private refresh(I)V
    .registers 7
    .param p1, "i"    # I

    .line 173
    const/4 v0, 0x0

    const-string v1, "string"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1f

    .line 174
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mMessageText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "quick_settings_location_detail_mode_sensors_only_description"

    invoke-static {v4, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5e

    .line 176
    :cond_1f
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3b

    .line 177
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mMessageText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "quick_settings_location_detail_mode_battery_saving_description"

    invoke-static {v4, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5e

    .line 179
    :cond_3b
    const/4 v2, 0x3

    if-eq p1, v2, :cond_46

    .line 180
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mMessageContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5e

    .line 182
    :cond_46
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mMessageText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "quick_settings_location_detail_mode_high_accuracy_description"

    invoke-static {v4, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mMessageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 185
    :goto_5e
    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .line 151
    const/4 v0, 0x0

    if-eqz p2, :cond_7

    .line 152
    move-object v1, p2

    check-cast v1, Landroid/widget/LinearLayout;

    .local v1, "linearLayout":Landroid/widget/LinearLayout;
    goto :goto_19

    .line 154
    .end local v1    # "linearLayout":Landroid/widget/LinearLayout;
    :cond_7
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const-string v2, "location_mode_panel"

    const-string v3, "layout"

    invoke-static {v2, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 156
    .restart local v1    # "linearLayout":Landroid/widget/LinearLayout;
    :goto_19
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    .line 157
    .local v2, "locationTile":Lcom/android/systemui/qs/tiles/LocationTile;
    iget-object v3, v2, Lcom/android/systemui/qs/tiles/LocationTile;->mController:Lcom/android/systemui/statusbar/policy/LocationController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/LocationController;->getLocationCurrentState()I

    move-result v3

    iput v3, v2, Lcom/android/systemui/qs/tiles/LocationTile;->mLastState:I

    .line 158
    if-nez p2, :cond_a3

    .line 159
    const-string v3, "id"

    const-string v4, "location_buttons"

    invoke-static {v4, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/volume/SegmentedButtons;

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    .line 160
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const-string v5, "string"

    const-string v6, "quick_settings_location_high_accuracy_label_twoline"

    invoke-static {v6, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "quick_settings_location_high_accuracy_label"

    invoke-static {v7, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 161
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const-string v6, "quick_settings_location_battery_saving_label_twoline"

    invoke-static {v6, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "quick_settings_location_battery_saving_label"

    invoke-static {v7, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 162
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    const-string v6, "quick_settings_location_gps_only_label_twoline"

    invoke-static {v6, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const-string v7, "quick_settings_location_gps_only_label"

    invoke-static {v7, v5}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/systemui/volume/SegmentedButtons;->addButton(IILjava/lang/Object;)V

    .line 163
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mButtonsCallback:Lcom/android/systemui/volume/SegmentedButtons$Callback;

    invoke-virtual {v4, v5}, Lcom/android/systemui/volume/SegmentedButtons;->setCallback(Lcom/android/systemui/volume/SegmentedButtons$Callback;)V

    .line 164
    const-string v4, "location_introduction"

    invoke-static {v4, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mMessageContainer:Landroid/view/ViewGroup;

    .line 165
    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mMessageContainer:Landroid/view/ViewGroup;

    sget v5, Lcom/android/mwilky/Renovate;->mAccentColor:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 166
    const-string v4, "location_introduction_message"

    invoke-static {v4, v3}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mMessageText:Landroid/widget/TextView;

    .line 168
    :cond_a3
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->mButtons:Lcom/android/systemui/volume/SegmentedButtons;

    iget-object v4, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget v4, v4, Lcom/android/systemui/qs/tiles/LocationTile;->mLastState:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/volume/SegmentedButtons;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    iget v0, v0, Lcom/android/systemui/qs/tiles/LocationTile;->mLastState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->refresh(I)V

    .line 170
    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 0

    const p0, -0x7fffffd3

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 0

    invoke-static {}, Lcom/android/systemui/qs/tiles/LocationTile;->access$400()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 4

    .line 122
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "quick_settings_location_detail_title"

    const-string v2, "string"

    invoke-static {v1, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$300(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/plugins/qs/QSTile$State;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$500(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$600(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationEnabled(Z)Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    :cond_0
    return-void
.end method
