.class public final Lcom/twitter/android/profilecompletionmodule/n;
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
        "Lcom/twitter/android/profilecompletionmodule/chooseheader/a;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/twitter/android/profilecompletionmodule/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/twitter/android/profilecompletionmodule/n;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/profilecompletionmodule/n;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/twitter/android/profilecompletionmodule/g;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Lcom/twitter/android/profilecompletionmodule/n;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/n;->b:Lcom/twitter/android/profilecompletionmodule/g;

    .line 20
    return-void
.end method

.method public static a(Lcom/twitter/android/profilecompletionmodule/g;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/profilecompletionmodule/g;",
            ")",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/profilecompletionmodule/chooseheader/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/n;

    invoke-direct {v0, p0}, Lcom/twitter/android/profilecompletionmodule/n;-><init>(Lcom/twitter/android/profilecompletionmodule/g;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/profilecompletionmodule/chooseheader/a;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/n;->b:Lcom/twitter/android/profilecompletionmodule/g;

    .line 25
    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/g;->c()Lcom/twitter/android/profilecompletionmodule/chooseheader/a;

    move-result-object v0

    const-string/jumbo v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 24
    invoke-static {v0, v1}, Ldagger/internal/d;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/profilecompletionmodule/chooseheader/a;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/n;->a()Lcom/twitter/android/profilecompletionmodule/chooseheader/a;

    move-result-object v0

    return-object v0
.end method
