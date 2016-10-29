.class Lcom/twitter/android/moments/data/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/moments/ad;

.field final synthetic b:Lcom/twitter/android/moments/data/h;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/data/h;Lcom/twitter/model/moments/ad;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/twitter/android/moments/data/j;->b:Lcom/twitter/android/moments/data/h;

    iput-object p2, p0, Lcom/twitter/android/moments/data/j;->a:Lcom/twitter/model/moments/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/android/moments/data/j;->a:Lcom/twitter/model/moments/ad;

    iget-boolean v0, v0, Lcom/twitter/model/moments/ad;->k:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/twitter/android/moments/data/j;->b:Lcom/twitter/android/moments/data/h;

    invoke-static {v1}, Lcom/twitter/android/moments/data/h;->a(Lcom/twitter/android/moments/data/h;)Laio;

    move-result-object v1

    invoke-virtual {v1, v0}, Laio;->a(Z)V

    .line 75
    if-eqz v0, :cond_2

    .line 76
    iget-object v1, p0, Lcom/twitter/android/moments/data/j;->b:Lcom/twitter/android/moments/data/h;

    invoke-static {v1}, Lcom/twitter/android/moments/data/h;->b(Lcom/twitter/android/moments/data/h;)Lcom/twitter/android/moments/data/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/data/j;->a:Lcom/twitter/model/moments/ad;

    iget-wide v2, v2, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/moments/data/ae;->a(J)V

    .line 77
    iget-object v1, p0, Lcom/twitter/android/moments/data/j;->b:Lcom/twitter/android/moments/data/h;

    invoke-static {v1}, Lcom/twitter/android/moments/data/h;->c(Lcom/twitter/android/moments/data/h;)Lahp;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/data/j;->a:Lcom/twitter/model/moments/ad;

    iget-wide v2, v2, Lcom/twitter/model/moments/ad;->b:J

    invoke-interface {v1, v2, v3}, Lahp;->a(J)V

    .line 82
    :goto_1
    iget-object v1, p0, Lcom/twitter/android/moments/data/j;->b:Lcom/twitter/android/moments/data/h;

    invoke-static {v1}, Lcom/twitter/android/moments/data/h;->d(Lcom/twitter/android/moments/data/h;)Lcom/twitter/android/moments/data/k;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/twitter/android/moments/data/j;->b:Lcom/twitter/android/moments/data/h;

    invoke-static {v1}, Lcom/twitter/android/moments/data/h;->d(Lcom/twitter/android/moments/data/h;)Lcom/twitter/android/moments/data/k;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/data/j;->a:Lcom/twitter/model/moments/ad;

    iget-wide v2, v2, Lcom/twitter/model/moments/ad;->b:J

    invoke-interface {v1, v2, v3, v0}, Lcom/twitter/android/moments/data/k;->a(JZ)V

    .line 85
    :cond_0
    return-void

    .line 73
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_2
    iget-object v1, p0, Lcom/twitter/android/moments/data/j;->b:Lcom/twitter/android/moments/data/h;

    invoke-static {v1}, Lcom/twitter/android/moments/data/h;->b(Lcom/twitter/android/moments/data/h;)Lcom/twitter/android/moments/data/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/data/j;->a:Lcom/twitter/model/moments/ad;

    iget-wide v2, v2, Lcom/twitter/model/moments/ad;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/twitter/android/moments/data/ae;->b(J)V

    .line 80
    iget-object v1, p0, Lcom/twitter/android/moments/data/j;->b:Lcom/twitter/android/moments/data/h;

    invoke-static {v1}, Lcom/twitter/android/moments/data/h;->c(Lcom/twitter/android/moments/data/h;)Lahp;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/data/j;->a:Lcom/twitter/model/moments/ad;

    iget-wide v2, v2, Lcom/twitter/model/moments/ad;->b:J

    invoke-interface {v1, v2, v3}, Lahp;->b(J)V

    goto :goto_1
.end method
