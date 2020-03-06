.class Lcom/oneplus/aod/OpAodLightEffectContainer$3;
.super Ljava/lang/Object;
.source "OpAodLightEffectContainer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/aod/OpAodLightEffectContainer;->animateNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OpAodLightEffectContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$3;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$3;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const v0, 0x3e99999a    # 0.3f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v1, :cond_0

    div-float v2, p1, v0

    goto :goto_0

    :cond_0
    cmpl-float v0, p1, v2

    if-ltz v0, :cond_1

    const/high16 v0, 0x40000000    # 2.0f

    sub-float v2, v0, p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oneplus/aod/OpAodLightEffectContainer$3;->this$0:Lcom/oneplus/aod/OpAodLightEffectContainer;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method
