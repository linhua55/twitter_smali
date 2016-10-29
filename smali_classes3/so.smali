.class Lso;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lsm;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lsc;

.field final synthetic c:Lsn;


# direct methods
.method constructor <init>(Lsn;Ljava/lang/Object;Lsc;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lso;->c:Lsn;

    iput-object p2, p0, Lso;->a:Ljava/lang/Object;

    iput-object p3, p0, Lso;->b:Lsc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/api/search/TwitterTypeAheadGroup;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 83
    iget-object v0, p0, Lso;->c:Lsn;

    iget-object v1, p0, Lso;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lsn;->a(Ljava/lang/Object;Lcom/twitter/library/api/search/TwitterTypeAheadGroup;)V

    .line 84
    iget-object v0, p0, Lso;->c:Lsn;

    iget-object v1, p0, Lso;->a:Ljava/lang/Object;

    iget-object v2, p0, Lso;->b:Lsc;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lsn;->a(Lsn;Ljava/lang/Object;Lsc;Z)V

    .line 85
    return-void
.end method
