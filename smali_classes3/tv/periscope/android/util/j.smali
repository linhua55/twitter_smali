.class Ltv/periscope/android/util/j;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Ltv/periscope/android/util/i;


# direct methods
.method constructor <init>(Ltv/periscope/android/util/i;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Ltv/periscope/android/util/j;->b:Ltv/periscope/android/util/i;

    iput-object p2, p0, Ltv/periscope/android/util/j;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Ltv/periscope/android/util/j;->b:Ltv/periscope/android/util/i;

    invoke-static {v0}, Ltv/periscope/android/util/i;->a(Ltv/periscope/android/util/i;)Ltv/periscope/android/util/k;

    move-result-object v0

    iget-object v1, p0, Ltv/periscope/android/util/j;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Ltv/periscope/android/util/k;->a(Landroid/graphics/Bitmap;)V

    .line 263
    return-void
.end method
