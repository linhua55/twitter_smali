.class Lokhttp3/internal/framed/f;
.super Ldex;
.source "Twttr"


# instance fields
.field final synthetic a:I

.field final synthetic c:J

.field final synthetic d:Lokhttp3/internal/framed/d;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/d;Ljava/lang/String;[Ljava/lang/Object;IJ)V
    .locals 1

    .prologue
    .line 339
    iput-object p1, p0, Lokhttp3/internal/framed/f;->d:Lokhttp3/internal/framed/d;

    iput p4, p0, Lokhttp3/internal/framed/f;->a:I

    iput-wide p5, p0, Lokhttp3/internal/framed/f;->c:J

    invoke-direct {p0, p2, p3}, Ldex;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/f;->d:Lokhttp3/internal/framed/d;

    iget-object v0, v0, Lokhttp3/internal/framed/d;->i:Lokhttp3/internal/framed/c;

    iget v1, p0, Lokhttp3/internal/framed/f;->a:I

    iget-wide v2, p0, Lokhttp3/internal/framed/f;->c:J

    invoke-interface {v0, v1, v2, v3}, Lokhttp3/internal/framed/c;->a(IJ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v0

    goto :goto_0
.end method
