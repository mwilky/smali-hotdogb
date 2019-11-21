.class Lcom/android/systemui/qs/tiles/CaffeineTile$1;
.super Landroid/os/CountDownTimer;
.source "CaffeineTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/CaffeineTile;->startCountDown(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/CaffeineTile;JJ)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->access$200(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->access$200(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->refreshState()V

    .line 170
    return-void
.end method

.method public onTick(J)V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {v0, p1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->access$102(Lcom/android/systemui/qs/tiles/CaffeineTile;I)I

    .line 162
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$1;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-virtual {p1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->refreshState()V

    .line 163
    return-void
.end method
