.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$e1A66PKw22hxPtJd4s0OjQjRxFA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$e1A66PKw22hxPtJd4s0OjQjRxFA;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$e1A66PKw22hxPtJd4s0OjQjRxFA;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$e1A66PKw22hxPtJd4s0OjQjRxFA;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$e1A66PKw22hxPtJd4s0OjQjRxFA;->f$1:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$adjustBrightness$0$StatusBar(F)V

    return-void
.end method
