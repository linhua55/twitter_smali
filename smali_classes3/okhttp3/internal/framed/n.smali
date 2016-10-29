.class final Lokhttp3/internal/framed/n;
.super Lokhttp3/internal/framed/m;
.source "Twttr"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 902
    invoke-direct {p0}, Lokhttp3/internal/framed/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/internal/framed/t;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 904
    sget-object v0, Lokhttp3/internal/framed/ErrorCode;->k:Lokhttp3/internal/framed/ErrorCode;

    invoke-virtual {p1, v0}, Lokhttp3/internal/framed/t;->a(Lokhttp3/internal/framed/ErrorCode;)V

    .line 905
    return-void
.end method
