.class public interface abstract Lcom/samsung/android/cocktailbar/CocktailHost$ICallbackListener;
.super Ljava/lang/Object;
.source "CocktailHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICallbackListener"
.end annotation


# virtual methods
.method public abstract onCloseContextualCocktail(II)V
.end method

.method public abstract onRemoveCocktail(II)V
.end method

.method public abstract onUpdateCocktail(ILcom/samsung/android/cocktailbar/Cocktail;I)V
.end method

.method public abstract onUpdateToolLauncher(I)V
.end method

.method public abstract onViewDataChanged(III)V
.end method
