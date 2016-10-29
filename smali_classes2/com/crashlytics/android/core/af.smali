.class Lcom/crashlytics/android/core/af;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/ab;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ab;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/crashlytics/android/core/af;->a:Lcom/crashlytics/android/core/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 706
    iget-object v0, p0, Lcom/crashlytics/android/core/af;->a:Lcom/crashlytics/android/core/ab;

    iget-object v1, p0, Lcom/crashlytics/android/core/af;->a:Lcom/crashlytics/android/core/ab;

    sget-object v2, Lcom/crashlytics/android/core/d;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v2}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/ab;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/core/ab;->a([Ljava/io/File;)V

    .line 708
    return-void
.end method
