.class Lcom/twitter/android/timeline/av;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/widget/ex;

.field final synthetic b:I

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/twitter/android/timeline/at;


# direct methods
.method constructor <init>(Lcom/twitter/android/timeline/at;Lcom/twitter/android/widget/ex;ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/twitter/android/timeline/av;->d:Lcom/twitter/android/timeline/at;

    iput-object p2, p0, Lcom/twitter/android/timeline/av;->a:Lcom/twitter/android/widget/ex;

    iput p3, p0, Lcom/twitter/android/timeline/av;->b:I

    iput-object p4, p0, Lcom/twitter/android/timeline/av;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 140
    iget-object v0, p0, Lcom/twitter/android/timeline/av;->d:Lcom/twitter/android/timeline/at;

    invoke-static {v0}, Lcom/twitter/android/timeline/at;->a(Lcom/twitter/android/timeline/at;)Lcom/twitter/android/timeline/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/timeline/av;->a:Lcom/twitter/android/widget/ex;

    iget v2, p0, Lcom/twitter/android/timeline/av;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/timeline/ay;->b(Lcom/twitter/android/widget/ex;I)V

    .line 141
    iget-object v0, p0, Lcom/twitter/android/timeline/av;->d:Lcom/twitter/android/timeline/at;

    invoke-static {v0}, Lcom/twitter/android/timeline/at;->b(Lcom/twitter/android/timeline/at;)Lcom/twitter/android/timeline/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/timeline/av;->c:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/twitter/android/timeline/aw;->a(Landroid/app/Activity;)V

    .line 142
    return-void
.end method
