.class Lcom/twitter/android/initialization/e;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldau;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldau",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/initialization/ErrorReporterInitializer;


# direct methods
.method constructor <init>(Lcom/twitter/android/initialization/ErrorReporterInitializer;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/twitter/android/initialization/e;->a:Lcom/twitter/android/initialization/ErrorReporterInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 63
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/twitter/android/initialization/e;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 67
    if-eqz p1, :cond_0

    invoke-static {}, Lbix;->a()Lbiu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbiu;->a(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
