.class Landroidx/leanback/app/BaseFragment$6;
.super Ljava/lang/Object;
.source "BaseFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/leanback/app/BaseFragment;->onExecuteEntranceTransition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/leanback/app/BaseFragment;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroidx/leanback/app/BaseFragment;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/app/BaseFragment$6;->this$0:Landroidx/leanback/app/BaseFragment;

    iput-object p2, p0, Landroidx/leanback/app/BaseFragment$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    iget-object v0, p0, Landroidx/leanback/app/BaseFragment$6;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroidx/leanback/app/BaseFragment$6;->this$0:Landroidx/leanback/app/BaseFragment;

    invoke-static {v0}, Landroidx/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/leanback/app/BaseFragment$6;->this$0:Landroidx/leanback/app/BaseFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment$6;->this$0:Landroidx/leanback/app/BaseFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseFragment;->internalCreateEntranceTransition()V

    iget-object v0, p0, Landroidx/leanback/app/BaseFragment$6;->this$0:Landroidx/leanback/app/BaseFragment;

    invoke-virtual {v0}, Landroidx/leanback/app/BaseFragment;->onEntranceTransitionStart()V

    iget-object v0, p0, Landroidx/leanback/app/BaseFragment$6;->this$0:Landroidx/leanback/app/BaseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BaseFragment;->mEntranceTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/leanback/app/BaseFragment$6;->this$0:Landroidx/leanback/app/BaseFragment;

    iget-object v1, v0, Landroidx/leanback/app/BaseFragment;->mEntranceTransition:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/leanback/app/BaseFragment;->runEntranceTransition(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/leanback/app/BaseFragment$6;->this$0:Landroidx/leanback/app/BaseFragment;

    iget-object v0, v0, Landroidx/leanback/app/BaseFragment;->mStateMachine:Landroidx/leanback/util/StateMachine;

    iget-object v1, p0, Landroidx/leanback/app/BaseFragment$6;->this$0:Landroidx/leanback/app/BaseFragment;

    iget-object v1, v1, Landroidx/leanback/app/BaseFragment;->EVT_ENTRANCE_END:Landroidx/leanback/util/StateMachine$Event;

    invoke-virtual {v0, v1}, Landroidx/leanback/util/StateMachine;->fireEvent(Landroidx/leanback/util/StateMachine$Event;)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method