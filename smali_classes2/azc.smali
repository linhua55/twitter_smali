.class Lazc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic a:Lazb;


# direct methods
.method constructor <init>(Lazb;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lazc;->a:Lazb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lazc;->a:Lazb;

    invoke-static {v0, p1, p2}, Lazb;->a(Lazb;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 31
    return-void
.end method
