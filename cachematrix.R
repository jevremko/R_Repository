# Function makeCacheMatrix is returning a list of functions
makeCacheMatrix <- function(x = matrix()) 
{
        # Cuvam kesiranu vrednost inicijalizujem kesiranu vrednost i setujem je na NULL
        cache <- NULL
        # Cuvam Matrix
        setMatrix <- function(newValue) 
        {
                x <<- newValue
                # Ako je x-u setovana nova vrednost resetujem kes vrednsoti
                cache <<- NULL
        }
        # vracam sacuvan matrix
        getMatrix <- function() 
        {
                x
        }
        # kesiram prosledjeni argument
        cacheInverse <- function(solve) 
        {
                cache <<- solve
        }
        # uzimam kesiranu vrednost
        getInverse <- function() 
        {
                cache
        }
        # vracam listu, svaki argument je imenovan, svaki element koji se vraca je fukncija
        list(setMatrix = setMatrix, getMatrix = getMatrix, cacheInverse = cacheInverse, getInverse = getInverse)
}


## Function is returning inversed matrix
cacheSolve <- function(x, ...) 
{
        ## Vraca matrix koji je inverzovani 'x' uzima kesiranu vrednost
        inverse <- y$getInverse()
        # Ako kesirana vrednost postoji vrati je 
        if(!is.null(inverse))         
        {
                message("Getting cached data ... ")
                return(inverse)
        }
        # u drugom slucaju uzmi matrix, izracunaj inverziju i sacuvaj u kes
        data    <- y$getMatrix()
        inverse <- solve(data)
        y$cacheInverse(inverse)
        # vrati inverzovanu matricu
        inverse        
}
