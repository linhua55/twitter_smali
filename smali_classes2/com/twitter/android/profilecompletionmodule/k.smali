.class public final Lcom/twitter/android/profilecompletionmodule/k;
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
        "Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;",
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
    const-class v0, Lcom/twitter/android/profilecompletionmodule/k;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/twitter/android/profilecompletionmodule/k;->a:Z

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
    sget-boolean v0, Lcom/twitter/android/profilecompletionmodule/k;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_0
    iput-object p1, p0, Lcom/twitter/android/profilecompletionmodule/k;->b:Lcom/twitter/android/profilecompletionmodule/g;

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
            "Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/twitter/android/profilecompletionmodule/k;

    invoke-direct {v0, p0}, Lcom/twitter/android/profilecompletionmodule/k;-><init>(Lcom/twitter/android/profilecompletionmodule/g;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/profilecompletionmodule/k;->b:Lcom/twitter/android/profilecompletionmodule/g;

    invoke-virtual {v0}, Lcom/twitter/android/profilecompletionmodule/g;->h()Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/twitter/android/profilecompletionmodule/k;->a()Lcom/twitter/android/profilecompletionmodule/addbirthday/AddBirthdayState;

    move-result-object v0

    return-object v0
.end method
