.class public final Lcom/twitter/android/people/ad;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ldagger/internal/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/c",
        "<",
        "Lapb;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/twitter/android/people/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/twitter/android/people/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/people/ad;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/twitter/android/people/ac;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Lcom/twitter/android/people/ad;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/people/ad;->b:Lcom/twitter/android/people/ac;

    .line 20
    return-void
.end method

.method public static a(Lcom/twitter/android/people/ac;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/people/ac;",
            ")",
            "Ldagger/internal/c",
            "<",
            "Lapb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/twitter/android/people/ad;

    invoke-direct {v0, p0}, Lcom/twitter/android/people/ad;-><init>(Lcom/twitter/android/people/ac;)V

    return-object v0
.end method


# virtual methods
.method public a()Lapb;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/people/ad;->b:Lcom/twitter/android/people/ac;

    .line 25
    invoke-virtual {v0}, Lcom/twitter/android/people/ac;->a()Lapb;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapb;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/twitter/android/people/ad;->a()Lapb;

    move-result-object v0

    return-object v0
.end method
