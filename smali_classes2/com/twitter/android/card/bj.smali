.class Lcom/twitter/android/card/bj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/card/bg;


# direct methods
.method constructor <init>(Lcom/twitter/android/card/bg;J)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/twitter/android/card/bj;->b:Lcom/twitter/android/card/bg;

    iput-wide p2, p0, Lcom/twitter/android/card/bj;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 207
    iget-object v0, p0, Lcom/twitter/android/card/bj;->b:Lcom/twitter/android/card/bg;

    iget-wide v2, p0, Lcom/twitter/android/card/bj;->a:J

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/card/bg;->a(J)V

    .line 208
    return-void
.end method
