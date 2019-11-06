.class Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessRunnable;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessRunnable;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessRunnable;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$0001(Lcom/android/systemui/statusbar/phone/StatusBar;)I #000

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$1001(Lcom/android/systemui/statusbar/phone/StatusBar;I)V #100

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$BrightnessRunnable;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/16 v1, 0x15

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$2020(Lcom/android/systemui/statusbar/phone/StatusBar;I)I #202

    return-void
.end method
