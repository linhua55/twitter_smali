.class Lcom/twitter/android/xz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/UsernameEntryFragment;


# direct methods
.method constructor <init>(Lcom/twitter/android/UsernameEntryFragment;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/twitter/android/xz;->a:Lcom/twitter/android/UsernameEntryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/twitter/android/xz;->a:Lcom/twitter/android/UsernameEntryFragment;

    invoke-static {v0}, Lcom/twitter/android/UsernameEntryFragment;->a(Lcom/twitter/android/UsernameEntryFragment;)Lcom/twitter/android/kk;

    move-result-object v0

    invoke-interface {v0}, Lcom/twitter/android/kk;->d()V

    .line 264
    return-void
.end method
