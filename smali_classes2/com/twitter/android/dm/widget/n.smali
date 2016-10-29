.class Lcom/twitter/android/dm/widget/n;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;


# direct methods
.method constructor <init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;J)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/twitter/android/dm/widget/n;->b:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    iput-wide p2, p0, Lcom/twitter/android/dm/widget/n;->a:J

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 447
    iget-object v0, p0, Lcom/twitter/android/dm/widget/n;->b:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->b(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)Lcom/twitter/android/dm/widget/a;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/dm/widget/n;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/dm/widget/a;->b(J)V

    .line 448
    return-void
.end method
