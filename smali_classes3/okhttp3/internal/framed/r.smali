.class Lokhttp3/internal/framed/r;
.super Ldex;
.source "Twttr"


# instance fields
.field final synthetic a:Lokhttp3/internal/framed/ap;

.field final synthetic c:Lokhttp3/internal/framed/o;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/o;Ljava/lang/String;[Ljava/lang/Object;Lokhttp3/internal/framed/ap;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lokhttp3/internal/framed/r;->c:Lokhttp3/internal/framed/o;

    iput-object p4, p0, Lokhttp3/internal/framed/r;->a:Lokhttp3/internal/framed/ap;

    invoke-direct {p0, p2, p3}, Ldex;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 732
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/r;->c:Lokhttp3/internal/framed/o;

    iget-object v0, v0, Lokhttp3/internal/framed/o;->c:Lokhttp3/internal/framed/d;

    iget-object v0, v0, Lokhttp3/internal/framed/d;->i:Lokhttp3/internal/framed/c;

    iget-object v1, p0, Lokhttp3/internal/framed/r;->a:Lokhttp3/internal/framed/ap;

    invoke-interface {v0, v1}, Lokhttp3/internal/framed/c;->a(Lokhttp3/internal/framed/ap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v0

    goto :goto_0
.end method
