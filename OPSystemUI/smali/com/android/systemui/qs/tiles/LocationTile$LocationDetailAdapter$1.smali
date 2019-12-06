.class Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter$1;
.super Ljava/lang/Object;
.source "LocationTile.java"

# interfaces
.implements Lcom/android/systemui/volume/SegmentedButtons$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInteraction()V
    .locals 0

    return-void
.end method

.method public onSelected(Ljava/lang/Object;Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->access$1100(Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;)Lcom/android/systemui/volume/SegmentedButtons;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$702(Lcom/android/systemui/qs/tiles/LocationTile;I)I

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$1200(Lcom/android/systemui/qs/tiles/LocationTile;)Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x7a

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/LocationTile;->access$700(Lcom/android/systemui/qs/tiles/LocationTile;)I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    iget-object p1, p1, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$600(Lcom/android/systemui/qs/tiles/LocationTile;)Lcom/android/systemui/statusbar/policy/LocationController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    iget-object p2, p2, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {p2}, Lcom/android/systemui/qs/tiles/LocationTile;->access$700(Lcom/android/systemui/qs/tiles/LocationTile;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/policy/LocationController;->setLocationMode(I)Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter$1;->this$1:Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/LocationTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/LocationTile;->access$700(Lcom/android/systemui/qs/tiles/LocationTile;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;->access$1300(Lcom/android/systemui/qs/tiles/LocationTile$LocationDetailAdapter;I)V

    :cond_0
    return-void
.end method
