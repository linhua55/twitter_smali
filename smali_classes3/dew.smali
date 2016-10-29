.class public abstract Ldew;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static a:Ldew;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Lokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method

.method public abstract a(Lokhttp3/v;Lokhttp3/a;Lokhttp3/internal/connection/f;)Lokhttp3/internal/connection/c;
.end method

.method public abstract a(Lokhttp3/v;)Lokhttp3/internal/connection/d;
.end method

.method public abstract a(Lokhttp3/aj;Ljava/lang/String;)V
.end method

.method public abstract a(Lokhttp3/aj;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract a(Lokhttp3/x;Ljavax/net/ssl/SSLSocket;Z)V
.end method

.method public abstract a(Lokhttp3/v;Lokhttp3/internal/connection/c;)Z
.end method

.method public abstract b(Lokhttp3/v;Lokhttp3/internal/connection/c;)V
.end method
