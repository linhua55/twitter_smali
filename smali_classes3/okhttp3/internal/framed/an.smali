.class public interface abstract Lokhttp3/internal/framed/an;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lokhttp3/internal/framed/an;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lokhttp3/internal/framed/ao;

    invoke-direct {v0}, Lokhttp3/internal/framed/ao;-><init>()V

    sput-object v0, Lokhttp3/internal/framed/an;->a:Lokhttp3/internal/framed/an;

    return-void
.end method


# virtual methods
.method public abstract a(ILokhttp3/internal/framed/ErrorCode;)V
.end method

.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/y;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract a(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/y;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract a(ILokio/j;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
