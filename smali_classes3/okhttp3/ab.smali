.class public interface abstract Lokhttp3/ab;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lokhttp3/ab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lokhttp3/ac;

    invoke-direct {v0}, Lokhttp3/ac;-><init>()V

    sput-object v0, Lokhttp3/ab;->a:Lokhttp3/ab;

    return-void
.end method


# virtual methods
.method public abstract a(Lokhttp3/HttpUrl;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List",
            "<",
            "Lokhttp3/aa;",
            ">;"
        }
    .end annotation
.end method

.method public abstract a(Lokhttp3/HttpUrl;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/aa;",
            ">;)V"
        }
    .end annotation
.end method
