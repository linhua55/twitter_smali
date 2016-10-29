.class Lcom/twitter/android/wd;
.super Lrx/ao;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/ao",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/wc;


# direct methods
.method constructor <init>(Lcom/twitter/android/wc;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/twitter/android/wd;->a:Lcom/twitter/android/wc;

    invoke-direct {p0}, Lrx/ao;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 202
    iget-object v0, p0, Lcom/twitter/android/wd;->a:Lcom/twitter/android/wc;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/wc;->c(J)V

    .line 203
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 197
    invoke-static {p1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 198
    return-void
.end method

.method public synthetic b_(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 190
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/twitter/android/wd;->a(Ljava/lang/Long;)V

    return-void
.end method

.method public bt_()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method
