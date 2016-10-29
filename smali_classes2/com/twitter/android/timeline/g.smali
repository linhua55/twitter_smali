.class Lcom/twitter/android/timeline/g;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/timeline/e;


# direct methods
.method constructor <init>(Lcom/twitter/android/timeline/e;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/twitter/android/timeline/g;->a:Lcom/twitter/android/timeline/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/twitter/android/timeline/g;->a:Lcom/twitter/android/timeline/e;

    invoke-virtual {v0}, Lcom/twitter/android/timeline/e;->s()Z

    .line 66
    return-void
.end method
