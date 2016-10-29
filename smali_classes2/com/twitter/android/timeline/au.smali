.class Lcom/twitter/android/timeline/au;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/timeline/as;

.field final synthetic b:I

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lcom/twitter/android/timeline/at;


# direct methods
.method constructor <init>(Lcom/twitter/android/timeline/at;Lcom/twitter/android/timeline/as;ILandroid/app/Activity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/twitter/android/timeline/au;->d:Lcom/twitter/android/timeline/at;

    iput-object p2, p0, Lcom/twitter/android/timeline/au;->a:Lcom/twitter/android/timeline/as;

    iput p3, p0, Lcom/twitter/android/timeline/au;->b:I

    iput-object p4, p0, Lcom/twitter/android/timeline/au;->c:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 123
    iget-object v0, p0, Lcom/twitter/android/timeline/au;->d:Lcom/twitter/android/timeline/at;

    invoke-static {v0}, Lcom/twitter/android/timeline/at;->a(Lcom/twitter/android/timeline/at;)Lcom/twitter/android/timeline/ay;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/timeline/au;->a:Lcom/twitter/android/timeline/as;

    iget v2, p0, Lcom/twitter/android/timeline/au;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/timeline/ay;->b(Lcom/twitter/android/timeline/as;I)V

    .line 124
    iget-object v0, p0, Lcom/twitter/android/timeline/au;->a:Lcom/twitter/android/timeline/as;

    iget-object v0, v0, Lcom/twitter/android/timeline/as;->a:Lcom/twitter/model/moments/ay;

    iget-object v0, v0, Lcom/twitter/model/moments/ay;->b:Lcom/twitter/model/moments/ad;

    .line 125
    iget-wide v2, v0, Lcom/twitter/model/moments/ad;->b:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/twitter/android/timeline/au;->c:Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/android/timeline/au;->c:Landroid/app/Activity;

    iget-wide v4, v0, Lcom/twitter/model/moments/ad;->b:J

    .line 129
    invoke-static {v2, v4, v5}, Lcom/twitter/android/moments/ui/fullscreen/MomentsFullScreenPagerActivity;->c(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 128
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
