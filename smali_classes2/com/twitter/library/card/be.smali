.class Lcom/twitter/library/card/be;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/library/card/aw;

.field public final b:Ljava/lang/String;

.field public c:Z


# direct methods
.method constructor <init>(Lcom/twitter/library/card/aw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/twitter/library/card/be;->a:Lcom/twitter/library/card/aw;

    .line 71
    iput-object p2, p0, Lcom/twitter/library/card/be;->b:Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lcom/twitter/library/card/be;->a()V

    .line 73
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/library/card/be;->b:Ljava/lang/String;

    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/config/AppConfig;->a()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/twitter/config/d;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/library/card/be;->c:Z

    .line 77
    return-void
.end method
