.class public final Lcom/twitter/android/people/adapters/viewbinders/ab;
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
        "Lcom/twitter/android/people/adapters/viewbinders/z;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lddo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lddo",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/z;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/twitter/android/people/adapters/viewbinders/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/ab;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lddo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/z;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-boolean v0, Lcom/twitter/android/people/adapters/viewbinders/ab;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/people/adapters/viewbinders/ab;->b:Lddo;

    .line 19
    return-void
.end method

.method public static a(Lddo;)Ldagger/internal/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lddo",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/z;",
            ">;)",
            "Ldagger/internal/c",
            "<",
            "Lcom/twitter/android/people/adapters/viewbinders/z;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/android/people/adapters/viewbinders/ab;

    invoke-direct {v0, p0}, Lcom/twitter/android/people/adapters/viewbinders/ab;-><init>(Lddo;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/people/adapters/viewbinders/z;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/people/adapters/viewbinders/ab;->b:Lddo;

    new-instance v1, Lcom/twitter/android/people/adapters/viewbinders/z;

    invoke-direct {v1}, Lcom/twitter/android/people/adapters/viewbinders/z;-><init>()V

    invoke-static {v0, v1}, Ldagger/internal/MembersInjectors;->a(Lddo;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/people/adapters/viewbinders/z;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/twitter/android/people/adapters/viewbinders/ab;->a()Lcom/twitter/android/people/adapters/viewbinders/z;

    move-result-object v0

    return-object v0
.end method
