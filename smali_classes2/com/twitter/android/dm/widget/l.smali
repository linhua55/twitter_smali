.class Lcom/twitter/android/dm/widget/l;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/dm/widget/SentMessageBylineView;

.field final synthetic b:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;


# direct methods
.method constructor <init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;Lcom/twitter/android/dm/widget/SentMessageBylineView;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/twitter/android/dm/widget/l;->b:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    iput-object p2, p0, Lcom/twitter/android/dm/widget/l;->a:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/twitter/android/dm/widget/l;->b:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/l;->a:Lcom/twitter/android/dm/widget/SentMessageBylineView;

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Lcom/twitter/android/dm/widget/SentMessageBylineView;)V

    .line 384
    return-void
.end method
