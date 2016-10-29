.class Lzd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lzb;


# direct methods
.method constructor <init>(Lzb;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lzd;->a:Lzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lzd;->a:Lzb;

    invoke-static {v0}, Lzb;->a(Lzb;)Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v0

    iget-object v1, p0, Lzd;->a:Lzb;

    invoke-static {v1}, Lzb;->a(Lzb;)Lcom/twitter/android/dm/widget/SentMessageBylineView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/dm/widget/SentMessageBylineView;->a(Lcom/twitter/android/dm/widget/SentMessageBylineView;)V

    .line 150
    return-void
.end method
