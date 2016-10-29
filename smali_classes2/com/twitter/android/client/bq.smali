.class Lcom/twitter/android/client/bq;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/client/n;


# instance fields
.field final synthetic a:Lrx/an;

.field final synthetic b:Lcom/twitter/android/client/bp;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/bp;Lrx/an;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/twitter/android/client/bq;->b:Lcom/twitter/android/client/bp;

    iput-object p2, p0, Lcom/twitter/android/client/bq;->a:Lrx/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/android/client/bq;->a:Lrx/an;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/an;->a(Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x3

    return v0
.end method
