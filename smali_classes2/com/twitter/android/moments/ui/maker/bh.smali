.class Lcom/twitter/android/moments/ui/maker/bh;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/moments/ui/maker/bg;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/bg;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bh;->a:Lcom/twitter/android/moments/ui/maker/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bh;->a:Lcom/twitter/android/moments/ui/maker/bg;

    invoke-static {v0}, Lcom/twitter/android/moments/ui/maker/bg;->a(Lcom/twitter/android/moments/ui/maker/bg;)V

    .line 40
    const/4 v0, 0x1

    return v0
.end method
