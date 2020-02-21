.class Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;
.super Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;
.source "DrawerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityDelegate"
.end annotation


# instance fields
.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->this$0:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;

    invoke-direct {p0}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    return-void
.end method

.method private addChildrenForAccessibility(Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1, v2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private copyNodeInfoNoChildren(Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->isVisibleToUser()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->isClickable()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->isFocused()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->isAccessibilityFocused()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->isSelected()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setSelected(Z)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->isLongClickable()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setLongClickable(Z)V

    invoke-virtual {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->this$0:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->this$0:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v2, v1}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->this$0:Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v3, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->getDrawerTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    goto :goto_0

    :cond_0
    nop

    invoke-static {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {p2, p1}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;)V

    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->getParentForAccessibility(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-virtual {p2, v2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->copyNodeInfoNoChildren(Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->recycle()V

    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, p2, v2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout$AccessibilityDelegate;->addChildrenForAccessibility(Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/view/ViewGroup;)V

    :goto_0
    const-class v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    sget-object v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_FOCUS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    sget-object v0, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;->ACTION_CLEAR_FOCUS:Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p2, v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->removeAction(Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)Z

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/oneplus/support/drawerlayout/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method
