.class Lcom/twitter/android/widget/fn;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/TweetDetailView;


# direct methods
.method constructor <init>(Lcom/twitter/android/widget/TweetDetailView;)V
    .locals 0

    .prologue
    .line 967
    iput-object p1, p0, Lcom/twitter/android/widget/fn;->a:Lcom/twitter/android/widget/TweetDetailView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 968
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 972
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 973
    const v1, 0x7f1304a9

    if-ne v0, v1, :cond_1

    .line 974
    iget-object v0, p0, Lcom/twitter/android/widget/fn;->a:Lcom/twitter/android/widget/TweetDetailView;

    invoke-static {v0}, Lcom/twitter/android/widget/TweetDetailView;->g(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/android/widget/fo;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/twitter/android/widget/fn;->a:Lcom/twitter/android/widget/TweetDetailView;

    .line 976
    invoke-static {v2}, Lcom/twitter/android/widget/TweetDetailView;->f(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/library/api/ActivitySummary;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/library/api/ActivitySummary;->d:[J

    .line 975
    invoke-interface {v0, p1, v1, v2}, Lcom/twitter/android/widget/fo;->a(Landroid/view/View;I[J)V

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 977
    :cond_1
    const v1, 0x7f13048a

    if-ne v0, v1, :cond_0

    .line 978
    iget-object v0, p0, Lcom/twitter/android/widget/fn;->a:Lcom/twitter/android/widget/TweetDetailView;

    invoke-static {v0}, Lcom/twitter/android/widget/TweetDetailView;->g(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/android/widget/fo;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/twitter/android/widget/fn;->a:Lcom/twitter/android/widget/TweetDetailView;

    .line 980
    invoke-static {v2}, Lcom/twitter/android/widget/TweetDetailView;->f(Lcom/twitter/android/widget/TweetDetailView;)Lcom/twitter/library/api/ActivitySummary;

    move-result-object v2

    iget-object v2, v2, Lcom/twitter/library/api/ActivitySummary;->c:[J

    .line 979
    invoke-interface {v0, p1, v1, v2}, Lcom/twitter/android/widget/fo;->a(Landroid/view/View;I[J)V

    goto :goto_0
.end method
