.class Lokhttp3/internal/framed/g;
.super Ldex;
.source "Twttr"


# instance fields
.field final synthetic a:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lokhttp3/internal/framed/am;

.field final synthetic f:Lokhttp3/internal/framed/d;


# direct methods
.method varargs constructor <init>(Lokhttp3/internal/framed/d;Ljava/lang/String;[Ljava/lang/Object;ZIILokhttp3/internal/framed/am;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lokhttp3/internal/framed/g;->f:Lokhttp3/internal/framed/d;

    iput-boolean p4, p0, Lokhttp3/internal/framed/g;->a:Z

    iput p5, p0, Lokhttp3/internal/framed/g;->c:I

    iput p6, p0, Lokhttp3/internal/framed/g;->d:I

    iput-object p7, p0, Lokhttp3/internal/framed/g;->e:Lokhttp3/internal/framed/am;

    invoke-direct {p0, p2, p3}, Ldex;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 5

    .prologue
    .line 375
    :try_start_0
    iget-object v0, p0, Lokhttp3/internal/framed/g;->f:Lokhttp3/internal/framed/d;

    iget-boolean v1, p0, Lokhttp3/internal/framed/g;->a:Z

    iget v2, p0, Lokhttp3/internal/framed/g;->c:I

    iget v3, p0, Lokhttp3/internal/framed/g;->d:I

    iget-object v4, p0, Lokhttp3/internal/framed/g;->e:Lokhttp3/internal/framed/am;

    invoke-static {v0, v1, v2, v3, v4}, Lokhttp3/internal/framed/d;->a(Lokhttp3/internal/framed/d;ZIILokhttp3/internal/framed/am;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :goto_0
    return-void

    .line 376
    :catch_0
    move-exception v0

    goto :goto_0
.end method
