.class Lcom/twitter/library/metrics/n;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/config/f;


# instance fields
.field final synthetic a:Lcom/twitter/library/metrics/k;


# direct methods
.method constructor <init>(Lcom/twitter/library/metrics/k;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/twitter/library/metrics/n;->a:Lcom/twitter/library/metrics/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/twitter/library/metrics/n;->a:Lcom/twitter/library/metrics/k;

    invoke-static {v0}, Lcom/twitter/library/metrics/k;->a(Lcom/twitter/library/metrics/k;)V

    .line 156
    return-void
.end method
