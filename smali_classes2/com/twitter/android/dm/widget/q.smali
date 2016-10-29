.class Lcom/twitter/android/dm/widget/q;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;


# direct methods
.method constructor <init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/twitter/android/dm/widget/q;->a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/twitter/android/dm/widget/q;->a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->c(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/twitter/android/dm/widget/q;->a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;Z)Z

    .line 486
    iget-object v0, p0, Lcom/twitter/android/dm/widget/q;->a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)V

    .line 487
    return-void
.end method
